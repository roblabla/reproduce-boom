use std::future::Future;
use once_cell::sync::Lazy;
use concurrent_queue::ConcurrentQueue;

static CHANNEL: Lazy<ConcurrentQueue<()>> =
    Lazy::new(ConcurrentQueue::unbounded);

pub fn run() -> impl Future<Output = ()> {
    async move {
        let _ = CHANNEL.pop();
        println!("Did not crash.")
    }
}