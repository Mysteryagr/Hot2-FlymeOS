#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8179712 a19de8615cc87ea59c776b108cb71b1e45d650e9 7434240 9ff73b78df004de829ecac6dc9fef6895ca5f340
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:8179712:a19de8615cc87ea59c776b108cb71b1e45d650e9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:7434240:9ff73b78df004de829ecac6dc9fef6895ca5f340 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery a19de8615cc87ea59c776b108cb71b1e45d650e9 8179712 9ff73b78df004de829ecac6dc9fef6895ca5f340:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
