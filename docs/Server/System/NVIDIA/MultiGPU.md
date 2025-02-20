Multi-GPU
===

# Check

`nvidia-smi topo -m`

## Result for 8 x RTX4090

```
        GPU0    GPU1    GPU2    GPU3    GPU4    GPU5    GPU6    GPU7    CPU Affinity    NUMA Affinity   GPU NUMA ID
GPU0     X      SYS     SYS     SYS     SYS     SYS     SYS     SYS     48-63,176-191   3               N/A
GPU1    SYS      X      SYS     SYS     SYS     SYS     SYS     SYS     32-47,160-175   2               N/A
GPU2    SYS     SYS      X      SYS     SYS     SYS     SYS     SYS     16-31,144-159   1               N/A
GPU3    SYS     SYS     SYS      X      SYS     SYS     SYS     SYS     0-15,128-143    0               N/A
GPU4    SYS     SYS     SYS     SYS      X      SYS     SYS     SYS     112-127,240-254 7               N/A
GPU5    SYS     SYS     SYS     SYS     SYS      X      SYS     SYS     96-111,224-239  6               N/A
GPU6    SYS     SYS     SYS     SYS     SYS     SYS      X      SYS     80-95,208-223   5               N/A
GPU7    SYS     SYS     SYS     SYS     SYS     SYS     SYS      X      64-79,192-207   4               N/A

Legend:

  X    = Self
  SYS  = Connection traversing PCIe as well as the SMP interconnect between NUMA nodes (e.g., QPI/UPI)
  NODE = Connection traversing PCIe as well as the interconnect between PCIe Host Bridges within a NUMA node
  PHB  = Connection traversing PCIe as well as a PCIe Host Bridge (typically the CPU)
  PXB  = Connection traversing multiple PCIe bridges (without traversing the PCIe Host Bridge)
  PIX  = Connection traversing at most a single PCIe bridge
  NV#  = Connection traversing a bonded set of # NVLinks
```

# Ref

https://juejin.cn/post/7151226884351590431
