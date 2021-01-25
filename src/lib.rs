use std::future::Future;
use async_channel::{Sender, Receiver, unbounded};
use once_cell::sync::Lazy;

static CHANNEL: Lazy<(Sender<()>, Receiver<()>)> =
    Lazy::new(unbounded);

pub fn run() -> impl Future<Output = ()> {
    async move {
        CHANNEL.1.recv().await.unwrap();
        println!("Did not crash.")
    }
}