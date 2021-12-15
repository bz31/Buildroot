setenv fdt_high ffffffff

setenv bootargs root=/dev/mmcblk0p2 rootwait isolcpus=2,3

fatload mmc 0 $kernel_addr_r zImage
fatload mmc 0 $fdt_addr_r sun8i-h3-zeropi.dtb

bootz $kernel_addr_r - $fdt_addr_r
