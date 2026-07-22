# Module init

## Objective

Observe what happens after `insmod dummy.ko`.

---

## Execution Sequence

```
dummy_init()
 ├── rtnl_link_register()
 ├── rtnl_lock()
 ├── alloc_netdev_mqs()
 ├── register_netdevice()
 ├── __cond_resched()
 └── rtnl_unlock()
```

---

## Runtime Observations

### dummy_init()

Breakpoint reached.

<img src="../assets/entry_point.png">

---

### rtnl_link_register

- **Arguments**
    - rtnl_link_ops
        - validate = points to `dummy_validate` function.
        - setup = points to `dummy_setup` function.
        - kind = dummy

<img src="../assets/rtnl_link_register_call.png">

- **Return value**
    - it return 0

<img src="../assets/rtnl_link_register-return_value.png">

---

## Iteration limit

This reveal this iterate only 1 time.

<img src="../assets/iteration.png">

---

### alloc_netdev_mqs()

- **important arguments**
    - setup = dummy_setup
    - format_string = "dummy%d"

<img src="../assets/alloc_netdev_mqs_arguments.png">

- **Return value**
    - network device = 0xffff888104564000

<img src="../assets/alloc_netdev_mqs_return_value.png">

---

### register_netdevice()

- **Arguments**
    - rtnl_link_ops
        - validate = points to `dummy_validate` function.
        - setup = points to `dummy_setup` function.
        - kind = dummy

<img src="../assets/register_netdevice.png">

---

### init function return value

- **Return value**
    - return 0;

<img src="../assets/init_return_value.png">

---

## Environment

| Component | Value |
|---|---|
| Kernel | Linux 6.17.0-19 |
| Architecture | x86_64 |
| Debugger | GDB + QEMU |
| Module | dummy.ko |

---

## Conclusion

Runtime analysis confirmed the static analysis findings:

- dummy_init() registers the dummy rtnetlink operation.
- A single dummy network device is allocated.
- dummy_setup is used as the device initialization callback.
- The device registration succeeds.
- Module initialization completes successfully with return value 0.