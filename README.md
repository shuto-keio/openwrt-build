# openwrt-build

## build
This repository can build OpenWRT using docker.

1. Run run.sh
```
bash run.sh
```

2. Setup config file and save it.

![](https://user-images.githubusercontent.com/38306927/109365986-a960e980-78d5-11eb-90d1-36fd49ef3a8d.png)

Then *.bin file is saved  output directory.



## Install (WN-DX1167R)
1. Flash firmware via default Web UI
```
openwrt-ramips-mt7621-iodata_wn-dx1167r-initramfs-kernel.bin
```

2. ssh login
```
ssh root@192.168.1.1
```

3. Install luci-ssl

You can connect router via http.

```
opkg update
opkg install luci-ssl
/etc/init.d/uhttpd restart
```

4. Connect http://192.168.1.1

No login password required.

5. Move system > Backup / Flash Firmware

6. Flash firmware image

```
openwrt-ramips-mt7621-iodata_wn-dx1167r-squashfs-sysupgrade.bin
```
