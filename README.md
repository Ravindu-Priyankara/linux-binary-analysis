# Linux Binary Analysis

A collection of reverse engineering research and analysis of Linux binaries, kernel modules, and low-level software.

The goal of this repository is to document the process of understanding unknown binaries through:

- Static analysis
- Runtime analysis
- Debugging
- Binary formats
- Kernel internals
- Behavior analysis

---

# Repository Structure

```

.
│
├── Linux_Kernel_Modules
│   └── 001_dummy
│
├── Crackmes
│
├── Games
│
└── Rootkits

```

---

# Linux Kernel Modules

## 001_dummy

Reverse engineering analysis of the Linux dummy network driver kernel module.

The analysis is divided into multiple stages:

```

001_dummy/
|
├── analysis
│   |
│   ├── 01_static
│   ├── 02_dynamic
│   ├── 03_behavior
│   ├── artifacts
│   └── assets
|
├── r2_script
└── target.md

```

---

# Tools Used

## Reverse Engineering

- radare2
- GDB
- readelf
- objdump
- llvm tools

## Linux Kernel Analysis

- Linux kernel source
- pahole
- QEMU
- ftrace
- sysfs
- udevadm

---

# Learning Goals

This repository focuses on improving skills in:

- Linux kernel reverse engineering
- ELF binary analysis
- Assembly understanding
- Kernel debugging
- Rootkit analysis foundations
- Malware analysis techniques

---

# Current Status

## Completed

✅ Static analysis of dummy kernel module  
✅ ELF section and relocation analysis  
✅ Function-level reverse engineering  
✅ Initial behavioral analysis  

## In Progress

⬜ Dynamic kernel debugging  
⬜ Runtime memory inspection  
⬜ Rootkit analysis projects  

---

# Notes

This repository documents the learning process and methodology used while analyzing low-level software.

The objective is not only to understand what a binary does, but also how to prove behavior through different analysis techniques.

