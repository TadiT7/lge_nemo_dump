#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:18433258:976096ac89fbb9d701ad61dbbff8a323cdb26b6e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:16108774:5d08dec1a47ea31f34c8fdc404c9e8992d58cee4 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 976096ac89fbb9d701ad61dbbff8a323cdb26b6e 18433258 5d08dec1a47ea31f34c8fdc404c9e8992d58cee4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
