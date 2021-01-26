use once_cell::sync::Lazy;

static CHANNEL: Lazy<()> = Lazy::new(|| ());

pub fn run() -> impl FnOnce() {
    || {
        let _ = *CHANNEL;
        println!("Did not crash.")
    }
}