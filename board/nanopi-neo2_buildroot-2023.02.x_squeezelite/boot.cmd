setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait isolcpus=2,3

fatload mmc 0 $kernel_addr_r Image
fatload mmc 0 $fdt_addr_r sun50i-h5-nanopi-neo2.dtb

booti $kernel_addr_r - $fdt_addr_r
