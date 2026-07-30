# r2 -a x86 -b 64 -m 0xffffffff81fe6940 -i loop_add.r2 loop_add.bin

oba
aaa

# loop_add function

## reconstruct the function calls

CC "call __fentry__" @ 0xffffffff81fe6940
CC "call __kmalloc_cache_noprof" @ 0xffffffff81fe69b3
CC call timer_init_key @ 0xffffffff81fe69f9
CC call mutex_lock_killable @ 0xffffffff81fe6a0f
CC call idr_alloc @ 0xffffffff81fe6a3f
CC call mutex_unlock @  0xffffffff81fe6a57
CC call blk_mq_alloc_tag_set @ 0xffffffff81fe6aaf
CC call mutex_lock @ 0xffffffff81fe6acb
CC call idr_remove @ 0xffffffff81fe6ada
CC call mutex_unlock @ 0xffffffff81fe6ae6
CC call kfree @ 0xffffffff81fe6af5
CC call idr_alloc @ 0xffffffff81fe6b42
CC "call __blk_mq_alloc_disk" @ 0xffffffff81fe6b67
CC "call __mutex_init" @ 0xffffffff81fe6bb8
CC call sprintf @ 0xffffffff81fe6c76
CC call device_add_disk @ 0xffffffff81fe6c82
CC call mutex_lock @ 0xffffffff81fe6c92
CC call mutex_unlock @ 0xffffffff81fe6ca5
CC call mutex_unlock @ 0xffffffff81fe6cbc
CC call put_disk @ 0xffffffff81fe6ccf
CC call blk_mq_free_tag_set @ 0xffffffff81fe6ce7
CC "call __stack_chk_fail" @ 0xffffffff81fe6cf7

CC save first argument @ 0xffffffff81fe6961