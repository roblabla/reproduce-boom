//! A concurrent multi-producer multi-consumer queue.
//!
//! There are two kinds of queues:
//!
//! 1. [Bounded] queue with limited capacity.
//! 2. [Unbounded] queue with unlimited capacity.
//!
//! Queues also have the capability to get [closed] at any point. When closed, no more items can be
//! pushed into the queue, although the remaining items can still be popped.
//!
//! These features make it easy to build channels similar to [`std::sync::mpsc`] on top of this
//! crate.
//!
//! # Examples
//!
//! ```
//! use concurrent_queue::ConcurrentQueue;
//!
//! let q = ConcurrentQueue::unbounded();
//! q.push(1).unwrap();
//! q.push(2).unwrap();
//!
//! assert_eq!(q.pop(), Ok(1));
//! assert_eq!(q.pop(), Ok(2));
//! ```
//!
//! [Bounded]: `ConcurrentQueue::bounded()`
//! [Unbounded]: `ConcurrentQueue::unbounded()`
//! [closed]: `ConcurrentQueue::close()`

#![warn(missing_docs, missing_debug_implementations, rust_2018_idioms)]

use std::error;
use std::fmt;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::atomic::{self, AtomicUsize, Ordering};

use unbounded::Unbounded;

mod unbounded;

unsafe impl<T: Send> Send for ConcurrentQueue<T> {}
unsafe impl<T: Send> Sync for ConcurrentQueue<T> {}

impl<T> UnwindSafe for ConcurrentQueue<T> {}
impl<T> RefUnwindSafe for ConcurrentQueue<T> {}

pub type ConcurrentQueue<T> = Unbounded<T>;

/// Error which occurs when popping from an empty queue.
#[derive(Clone, Copy, Eq, PartialEq)]
pub enum PopError {
    /// The queue is empty but not closed.
    Empty,

    /// The queue is empty and closed.
    Closed,
}

impl error::Error for PopError {}

impl fmt::Debug for PopError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            PopError::Empty => write!(f, "Empty"),
            PopError::Closed => write!(f, "Closed"),
        }
    }
}

impl fmt::Display for PopError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            PopError::Empty => write!(f, "Empty"),
            PopError::Closed => write!(f, "Closed"),
        }
    }
}

/// Equivalent to `atomic::fence(Ordering::SeqCst)`, but in some cases faster.
#[inline]
fn full_fence() {
    if cfg!(any(target_arch = "x86", target_arch = "x86_64")) {
        // HACK(stjepang): On x86 architectures there are two different ways of executing
        // a `SeqCst` fence.
        //
        // 1. `atomic::fence(SeqCst)`, which compiles into a `mfence` instruction.
        // 2. `_.compare_exchange(_, _, SeqCst, SeqCst)`, which compiles into a `lock cmpxchg` instruction.
        //
        // Both instructions have the effect of a full barrier, but empirical benchmarks have shown
        // that the second one is sometimes a bit faster.
        //
        // The ideal solution here would be to use inline assembly, but we're instead creating a
        // temporary atomic variable and compare-and-exchanging its value. No sane compiler to
        // x86 platforms is going to optimize this away.
        let a = AtomicUsize::new(0);
        let _ = a.compare_exchange(0, 1, Ordering::SeqCst, Ordering::SeqCst);
    } else {
        atomic::fence(Ordering::SeqCst);
    }
}
