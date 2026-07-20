# Load
# r2 -e bin.relocs.apply=true -i r2_script/dummy_analysis.r2 dummy.ko

# Load analysis 
aaa

# Analyse init module

CC pointer to struct rtnl_link_ops  @ 0x08000366
CC call rtnl_link_register @  0x08000375
CC save rtnl_link_register return value @ 0x0800037a
CC set flags from return value @ 0x0800037c
CC if return value < 0, failure path @ 0x0800037e
CC call rtnl_lock @ 0x08000384
CC runtime value(reloc 0x3f) @ 0x0800038c
CC make zero for use loop counter @ 0x08000389
CC "if x <= r13d, follows this path" @  0x08000393
CC set flags from return value(rtnl_link_register return value) @ 0x08000395
CC if(return_value != 0) , follow this path @  0x08000397
CC rxqs(6th arg) = 1 @ 0x08000399
CC txqs(5th arg) = 1 @ 0x0800039f
CC sizeof_priv(1st arg) = 0 @ 0x080003a5
CC setup callback(4th arg) = &dummy_setup @ 0x080003a7
CC name_assign_type(3rd arg) = 1 @ 0x080003ae
CC format string(2nd arg) = dummy%d @  0x080003b3
CC call alloc_netdev_mqs @ 0x080003bf
CC save return device @ 0x080003c4
CC set flags from return value(alloc_netdev_mqs return null for failures) @ 0x080003c7
CC if(retun_val == NULL), follows this path @ 0x080003ca
CC "dev->rtnl_link_ops = runtime value(reloc 0x83)" @ 0x080003cc
CC rdi hold alloc_netdev_mqs returned device @ 0x080003d7
CC call register_netdevice @ 0x080003da
CC save return value @ 0x080003df
CC set flags using register_netdevice return value @ 0x080003e1
CC "if(return value >= 0) follows this path" @ 0x080003e3
CC device @ 0x080003e5
CC call free_netdev @ 0x080003e8
CC __SCT__cond_resched @ 0x080003f1
CC rtnl_unlock  @ 0x080003fb
CC clear return value for make return 0 @ 0x080003ef
CC increment the loop counter @ 0x080003f6
CC set flags from return value @ 0x08000400
CC "if return value >= 0, skip unregister" @ 0x08000402
CC pointer to struct rtnl_link_ops  @ 0x08000404
CC rtnl_link_unregister @ 0x0800040b 
CC return 0 or a negative value. (depend on runtime) @ 0x08000410

# exit module (cleanup_module)

CC "struct rtnl_link_ops *ops(reloc 0x14)" @ 0x08000339
CC call rtnl_link_unregister @ 0x08000343

# dummy_setup 

CC save pointer to struct net_device @ 0x0800024a
CC "eax hold value of dev->flags" @ 0x08000262
CC "dev->priv_flags |= 0x88000" @ 0x08000268
CC "dev->lltx |= 0x1" @ 0x0800026e
CC "dev->flags &= ~(1<<12) remove IFF_MULTICAST flag" @ 0x08000272
CC "dev->net_device_ops = mem_addr" @ 0x08000275
CC "dev->flag |= 0x80 (enable IFF_NOARP flag)"s @ 0x0800027d
CC "dev->needs_free_netdev = 1" @ 0x0800027f
CC "dev->flags = edited_flag" @ 0x08000286
CC u64 mask = 0xe4fdd0069 @ 0x0800028c
CC "mask |= dev->features" @ 0x08000296
CC "dev->hw_features |= mask" @ 0x0800029d
CC "dev->hw_enc_features |= mask" @ 0x080002a4
CC "dev->features = mask" @ 0x080002ab
CC clear mask @ 0x080002b2
CC "dev->ethtool_ops = mem_addr" @ 0x080002b4
CC "dev->request_ops_lock = 1" @ 0x080002bf
CC "dev->addr_assign_type = 1" @ 0x080002ef
CC "dev->min_mtu = 0 and dev->max_mtu = 0" @ 0x080002f6
CC 1st arg hold pointer to struct net_device @ 0x080002de
CC 2st arg = offset @ 0x080002d8
CC 3nd arg = A pointer to the new address data @ 0x080002da
CC 4rd arg = size @ 0x080002d3
CC eax = 1 byte from new addr @ 0x080002cf
CC clear first bit from eax hold new addr @ 0x080002e1
CC set 2nd bit @ 0x080002e4
CC moved modified byte to new addr @ 0x080002e7
CC make 16-bits zero @ 0x080002c6
CC buffer for random bytes @ 0x08000257
CC length of random bytes @ 0x08000252
CC Initializes part of the temporary MAC buffer before filling it with random data. @ 0x0800025b