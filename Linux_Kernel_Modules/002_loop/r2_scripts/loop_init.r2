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
CC (3rd_arg)rhs = (void *)(long)ebx @ 0xffffffff83d4b523
CC (2nd arg)lhs = (void *)1 @ 0xffffffff83d4b526
CC "(1st arg)_data = (void *)runtime vale" @ 0xffffffff83d4b52b
CC call __ubsan_handle_shift_out_of_bounds @ 0xffffffff83d4b532
