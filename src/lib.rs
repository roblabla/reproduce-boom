use std::future::Future;
use once_cell::sync::Lazy;

static CHANNEL: Lazy<()> =
    Lazy::new(|| ());

pub fn run() -> impl Future<Output = ()> {
    async move {
        let _ = *CHANNEL;
        println!("Did not crash.")
    }
}