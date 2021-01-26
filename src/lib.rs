#![feature(once_cell)]

use std::future::Future;
use std::lazy::SyncLazy;

static CHANNEL: SyncLazy<()> =
    SyncLazy::new(|| ());

pub fn run() -> impl Future<Output = ()> {
    async move {
        let _ = *CHANNEL;
        println!("Did not crash.");
    }
}