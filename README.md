# Fun crash reproducer

This repository reproduces a crash in LLVM.

To reproduce:

- Get a windows machine
- Install rustup
- Run `cargo run --release`

Backtrace:

```
[0x0]   reproducer!core::sync::atomic::atomic_compare_exchange + 0x3
[0x1]   reproducer!core::sync::atomic::AtomicUsize::compare_exchange + 0x3
[0x2]   reproducer!core::sync::atomic::AtomicUsize::compare_and_swap + 0x3
[0x3]   reproducer!once_cell::imp::wait + 0x5c
[0x4]   reproducer!once_cell::imp::initialize_inner + 0xcc
[0x5]   reproducer!once_cell::imp::OnceCell<tuple<>>::initialize<tuple<>,closure-0,once_cell::sync::{{impl}}::get_or_init::Void> + 0x41
[0x6]   reproducer!once_cell::sync::OnceCell<tuple<>>::get_or_try_init + 0x19
[0x7]   reproducer!once_cell::sync::OnceCell<tuple<>>::get_or_init + 0x19
[0x8]   reproducer!once_cell::sync::Lazy<tuple<>, fn()>::force + 0x19
[0x9]   reproducer!once_cell::sync::{{impl}}::deref + 0x19
[0xa]   reproducer!reproducer::run::{{closure}} + 0x19
[0xb]   reproducer!core::future::from_generator::{{impl}}::poll + 0x19
[0xc]   reproducer!reproducer::run + 0x7d
[0xd]   reproducer!reproducer::main + 0xc6
[0xe]   reproducer!core::ops::function::FnOnce::call_once + 0x2
[0xf]   reproducer!std::sys_common::backtrace::__rust_begin_short_backtrace<fn(),tuple<>> + 0x6
[0x10]   reproducer!std::rt::lang_start::{{closure}}<tuple<>> + 0xc
[0x11]   reproducer!core::ops::function::impls::{{impl}}::call_once + 0x6
[0x12]   reproducer!std::panicking::try::do_call + 0x6
[0x13]   reproducer!std::panicking::try + 0x6
[0x14]   reproducer!std::panic::catch_unwind + 0x6
[0x15]   reproducer!std::rt::lang_start_internal + 0xd9
[0x16]   reproducer!main + 0x27
[0x17]   reproducer!invoke_main + 0x22
[0x18]   reproducer!__scrt_common_main_seh + 0x10c
[0x19]   KERNEL32!BaseThreadInitThunk + 0x14
[0x1a]   ntdll!RtlUserThreadStart + 0x21
```