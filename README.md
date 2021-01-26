# Fun crash reproducer

This repository reproduces a crash in LLVM.

To reproduce:

- Get a windows machine
- Install rustup
- Run `cargo run --release`

Backtrace:

```
[0x0]   reproducer!ZN9once_cell3imp16initialize_inner17hbace76fe67e5aefcE + 0xcc
[0x1]   reproducer!ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h25baa7d838fe6b93E + 0x41
[0x2]   reproducer!panic_unwind::real_imp::exception_copy + 0x626
[0x3]   reproducer!ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h534993497af12c65E + 0x6
[0x4]   reproducer!ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dd51457d8e1653fE.llvm.14252833394787933358 + 0xc
[0x5]   reproducer!core::ops::function::impls::{{impl}}::call_once + 0x6
[0x6]   reproducer!std::panicking::try::do_call + 0x6
[0x7]   reproducer!std::panicking::try + 0x6
[0x8]   reproducer!std::panic::catch_unwind + 0x6
[0x9]   reproducer!std::rt::lang_start_internal + 0xd9
[0xa]   reproducer!main + 0x27
[0xb]   reproducer!invoke_main + 0x22
[0xc]   reproducer!__scrt_common_main_seh + 0x10c
[0xd]   KERNEL32!BaseThreadInitThunk + 0x14
[0xe]   ntdll!RtlUserThreadStart + 0x21
```