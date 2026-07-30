# r2 -a x86 -b 64 -m 0xffffffff83d4b4f0 -i loop_init.r2 loop_init.bin

oba
aaa

## init function

CC "__fentry__" @ 0xffffffff83d4b4f0
CC part_shift = 0 @ 0xffffffff83d4b4fe
CC eax = max_part @ 0xffffffff83d4b504
CC ebx = enable lowest 32 bits @ 0xffffffff83d4b50e
CC ebx = highest_set_bit(max_part) @ 0xffffffff83d4b513
CC ebx = highest_set_bit(max_part)+1 @ 0xffffffff83d4b516
CC part_shift = ebx @ 0xffffffff83d4b518
CC (3rd_arg)rhs = (void *)ebx @ 0xffffffff83d4b523
CC (2nd arg)lhs = (void *)1 @ 0xffffffff83d4b526
CC "(1st arg)_data = (void *)runtime value" @ 0xffffffff83d4b52b
CC call __ubsan_handle_shift_out_of_bounds @ 0xffffffff83d4b532
CC eax = 1 @ 0xffffffff83d4b537
CC ecx = highest_set_bit(max_part)+1 @ 0xffffffff83d4b53c
CC max_part = eax @ 0xffffffff83d4b543
CC (3rd_arg)rhs = (void *)ebx @ 0xffffffff83d4b54e
CC (2nd arg)lhs = (void *)1 @ 0xffffffff83d4b551
CC "(1st arg)_data = (void *)runtime value" @ 0xffffffff83d4b556
CC call __ubsan_handle_shift_out_of_bounds @ 0xffffffff83d4b55d
CC ebx = 0 @ 0xffffffff83d4b564
CC eax = 1 @ 0xffffffff83d4b566
CC ecx = 0(can be changed according to the path) @ 0xffffffff83d4b56b
CC rax = 1(can be changed according to the path) @ 0xffffffff83d4b56d
CC if(rax <= 0x100) follow this path @ 0xffffffff83d4b576
CC "set -22(EINVAL) error code" @ 0xffffffff83d4b578
CC r12d = 0x14 @ 0xffffffff83d4b582
CC r12d = r12d - ebx @ 0xffffffff83d4b588
CC if(r12d <= 0x3f) follow this path @ 0xffffffff83d4b58f
CC (3rd_arg)rhs = (void *)r12d @ 0xffffffff83d4b591
CC (2nd arg)lhs = (void *)1 @ 0xffffffff83d4b594
CC "(1st arg)_data = (void *)runtime value" @ 0xffffffff83d4b599
CC call __ubsan_handle_shift_out_of_bounds @ 0xffffffff83d4b5a0
CC eax = 1 @ 0xffffffff83d4b5a5
CC ecx = r12d @ 0xffffffff83d4b5aa
CC rdx = (int)max_loop @ 0xffffffff83d4b5ad
CC if(rax < rdx) follow this path to return -22(EINVAL) error @ 0xffffffff83d4b5ba
CC (1st_arg)rdi = (struct miscdevice *)loop_misc @ 0xffffffff83d4b5bc
CC call misc_register @ 0xffffffff83d4b5c3
CC save the return value @ 0xffffffff83d4b5c8
CC set flags according to return value @ 0xffffffff83d4b5ca
CC if(ret_val < 0) follow this path @ 0xffffffff83d4b5cc
CC (3rd arg) probe callback = loop_probe @ 0xffffffff83d4b5ce
CC (2nd arg) name = (char *)runtime value @ 0xffffffff83d4b5d5
CC (1st arg) major = 7 @ 0xffffffff83d4b5dc
CC call __register_blkdev @ 0xffffffff83d4b5e1
CC save the return value @ 0xffffffff83d4b5e6
CC set flags according to return value @ 0xffffffff83d4b5e8
CC if(ret_val == 0) follow this path(success path) @ 0xffffffff83d4b5ea
CC (1st_arg)rdi = (struct miscdevice *)loop_misc @ 0xffffffff83d4b5ec
CC set -5(EIO) error code @ 0xffffffff83d4b5f3
CC call misc_deregister @ 0xffffffff83d4b5f8
CC jump to exit path @ 0xffffffff83d4b5fd
CC make zero @ 0xffffffff83d4b5ff
CC compare max_loop against loop counter @ 0xffffffff83d4b602
CC if(max_loop <= loop counter) follow this path(exit loop path) @ 0xffffffff83d4b609
CC (1st arg)rdi = r12d(loop counter) @ 0xffffffff83d4b60b
CC increment the r12d(loop counter) @ 0xffffffff83d4b60e
CC call loop_add (this is driver define function) @ 0xffffffff83d4b611
CC jump until break the loop @ 0xffffffff83d4b616
CC (1st arg) rdi = runtime value @ 0xffffffff83d4b618
CC call _printk @ 0xffffffff83d4b61f
CC set return value @ 0xffffffff83d4b624
CC make zero @ 0xffffffff83d4b4f6
CC set flags according to max_part @ 0xffffffff83d4b50a
CC if(max_part <= 0) follow this path @  0xffffffff83d4b50c
CC if(ebx <= 0x3f) follow this path @ 0xffffffff83d4b521
CC rax << cl @ 0xffffffff83d4b53e
CC eax-- @ 0xffffffff83d4b541
CC if(ebx <= 0x3f) follow this path @ 0xffffffff83d4b54c
CC rax << cl @ 0xffffffff83d4b5b4
CC if(rax < rdx) follow this path @ 0xffffffff83d4b5ba