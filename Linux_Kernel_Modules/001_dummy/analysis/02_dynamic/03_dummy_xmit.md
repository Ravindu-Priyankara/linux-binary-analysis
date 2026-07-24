# Packet Transmission

## Objective

Verify that transmitting a packet through `dummy0` invokes `dummy_xmit()`.

---

## Runtime Observations

### dummy_xmit()

Breakpoint reached during packet transmission.

<img src="../assets/dummy_xmit_breakpoint.png">

---

### Packet

- skb length = 70 bytes
- network device = dummy0

<img src="../assets/xmit_packet_and_name.png">

---

### Return value

- return value = 0 (NETDEV_TX_OK)

<img src="../assets/xmit_return_value.png">

---

## Conclusion

Runtime analysis confirmed that transmitting a packet through `dummy0` invokes `dummy_xmit()`. The callback receives the expected `sk_buff` associated with the dummy network device and returns `NETDEV_TX_OK`.