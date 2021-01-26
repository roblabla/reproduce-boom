fn main() {
    run(reproducer::run());
}

use std::task::{Context, Poll, RawWaker, RawWakerVTable, Waker};

static VTABLE: RawWakerVTable = RawWakerVTable::new(
    |_clone_me| RawWaker::new(std::ptr::null(), &VTABLE),
    |_wake_me| { },
    |_wake_by_ref_me| { },
    |_drop_me| { },
);

/// Run a `Future`.
pub fn run<F: std::future::Future>(mut f: F) -> F::Output {
    let mut f = unsafe { std::pin::Pin::new_unchecked(&mut f) };
    let raw_waker = RawWaker::new(std::ptr::null(), &VTABLE);
    let waker = unsafe { Waker::from_raw(raw_waker) };
    let mut cx = Context::from_waker(&waker);

    loop {
        match f.as_mut().poll(&mut cx) {
            Poll::Pending => {
            }
            Poll::Ready(val) => return val,
        }
    }
}