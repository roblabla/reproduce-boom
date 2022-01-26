#![no_std]
#![no_main]

#![windows_subsystem = "console"]

use core::panic::PanicInfo;

#[no_mangle]
fn mainCRTStartup() -> i32 {
    reproducer::memrchr();
    0
}

#[panic_handler]
fn panic(_arg: &PanicInfo) -> ! {
    loop {}
}
