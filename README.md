# Fun crash reproducer

This repository reproduces a crash when linking with rust-lld with Thin LTO

To reproduce:

- Get a windows machine
- Install rustup
- Run `cargo run --release`

Error:

```
Access violation - code c0000005 (first chance)
First chance exceptions are reported before any exception handling.
This exception may be expected and handled.
```

ASM:

```
 00007ff6`dc681004 488b05f50f0000 mov     rax, qword ptr [reproducer!_imp__ZN10reproducer7memrchr2FN17hba5c5df7f9a4f66bE (00007ff6`dc682000)]
 00007ff6`dc68100b 488b00         mov     rax, qword ptr [rax]
 00007ff6`dc68100e ffd0           call    rax
*00007ff6`dc681010 31c0           xor     eax, eax
 00007ff6`dc681012 4883c428       add     rsp, 28h
```

Backtrace:

```
[0x0]   0x100785a4d
[0x1]   reproducer!reproducer::memrchr + 0xc
[0x2]   reproducer!reproducer::mainCRTStartup + 0x10
[0x3]   KERNEL32!BaseThreadInitThunk + 0x14
[0x4]   ntdll!RtlUserThreadStart + 0x21
```
