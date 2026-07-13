# Target Information

## Module

`dummy.ko`

## Locate the Module

```bash
find /lib/modules/$(uname -r) -name "*.ko*" | grep "net/dummy"
```

## Source

`drivers/net/dummy.c`

## Environment

* **Kernel:** `6.17.0-19-generic`
* **Architecture:** `x86_64`

## Target Verification

* **SHA256:** `2ea702e08fd252ada952a2a2153a41c15398dd08b2a25756d39900190211e106`
