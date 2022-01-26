#![no_std]
use core::sync::atomic::{AtomicPtr, Ordering};

#[inline(always)]
pub fn memrchr() {
    fn detect() {}

    static FN: AtomicPtr<()> = AtomicPtr::new(detect as *mut ());

    unsafe {
        let fun = FN.load(Ordering::SeqCst);
        core::mem::transmute::<*mut (), fn()>(fun)()
    }
}
