# Load
# r2 -e bin.relocs.apply=true -i r2_script/dummy_analysis.r2 dummy.ko

# Load analysis 
aaa

# Analyse init module

CC runtime value(look relocs.init.txt 0x19 offset) @ 0x08000366
CC call rtnl_link_register @  0x08000375
CC save return value @ 0x0800037a
CC set flags from return value @ 0x0800037c
CC if return value < 0, failure path @ 0x0800037e
CC call rtnl_lock @ 0x08000384
CC runtime value(reloc 0x3f) @ 0x0800038c
CC make zero for use loop counter @ 0x08000389
CC check zero flag(check return value == 0) @ 0x08000395
CC if(return_value != 0) , follow this path @  0x08000397
CC rxqs(6th arg) = 1 @ 0x08000399
CC txqs(5th arg) = 1 @ 0x0800039f
CC sizeof_priv(1st arg) = 0 @ 0x080003a5
CC setup callback(4th arg) = &dummy_setup @ 0x080003a7
CC name_assign_type(3rd arg) = 1 @ 0x080003ae
CC format string(2nd arg) = dummy%d @  0x080003b3
CC call alloc_netdev_mqs @ 0x080003bf
CC save return device @ 0x080003c4
CC check alloc_netdev_mqs failed or not @ 0x080003c7
CC failure path @ 0x080003ca
CC runtime value(reloc 0x83) @ 0x080003cc
CC rdi hold alloc_netdev_mqs returned device @ 0x080003d7
CC call register_netdevice @ 0x080003da
CC save return value @ 0x080003df
CC check register_netdevice success or not @ 0x080003e1
CC success path @ 0x080003e3
CC device @ 0x080003e5
CC call free_netdev @ 0x080003e8
CC __SCT__cond_resched @ 0x080003f1
CC rtnl_unlock  @ 0x080003fb
CC clear return value of register_netdevice @ 0x080003ef
CC increment the loop counter @ 0x080003f6
CC set flags from return value @ 0x08000400
CC if return value >= 0, skip unregister @ 0x08000402
CC runtime value(relocs 0xb7) @ 0x08000404
CC rtnl_link_unregister @ 0x0800040b 
CC return 0 or a negative value. (depend on runtime) @ 0x08000410