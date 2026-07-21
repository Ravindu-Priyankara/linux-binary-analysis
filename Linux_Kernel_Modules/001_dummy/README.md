# Linux Dummy Kernel Module Reverse Engineering

Static and dynamic analysis of Linux `dummy.ko`.

## Target

| Item | Value |
|-|-|
| Module | dummy.ko |
| Subsystem | Linux Networking |
| Architecture | x86_64 |

## Analysis Phases

## 1. Static Analysis

Binary-only analysis using:

- radare2
- llvm-readelf
- pahole
- objdump

### Function Analysis

| Function | Report |
|-|-|
| dummy_init | [dummy_init](analysis/01_static/01_dummy_init.md) |
| dummy_setup | [dummy_setup](analysis/01_static/02_dummy_setup.md) |
| set_multicast_list | [set_multicast_list](analysis/01_static/03_set_multicast_list.md) |
| dummy_cleanup | [dummy_cleanup](analysis/01_static/04_dummy_cleanup.md) |
| dummy_change_carrier | [dummy_change_carrier](analysis/01_static/05_dummy_change_carrier.md) |
| dummy_get_stats64 | [dummy_get_stats64](analysis/01_static/06_dummy_get_stats64.md) |
| dummy_dev_init | [dummy_dev_init](analysis/01_static/07_dummy_dev_init.md) |
| dummy_validate | [dummy_validate](analysis/01_static/08_dummy_validate.md) |
| dummy_xmit | [dummy_xmit](analysis/01_static/09_dummy_xmit.md) |

### Reproducibility

All static analysis annotations (comments, address markers, structure notes) are captured in a radare2 script for full reproducibility:

- [`r2_script/dummy_analysis.r2`](r2_script/dummy_analysis.r2)

Run it directly against the binary to reproduce the annotated analysis state:

```bash
r2 -e bin.relocs.apply=true -i r2_script/dummy_analysis.r2 dummy.ko
```

---

## 2. Dynamic Analysis

Status: In progress

Planned:

- GDB kernel debugging
- runtime structure verification
- callback execution tracing

---

## 3. Behavior Analysis

[Behavior Analysis](analysis/03_behavior/README.md)
