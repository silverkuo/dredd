#!/system/bin/sh
if ! applypatch -c MTD:recovery:6765368:2b4f5bbc64e5d72fbc5b5bca636a776b0d7a3375; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat MTD:boot:4455835:f7c540be088dce6d8a7fe3455fc1b1dd6019d405 MTD:recovery 2b4f5bbc64e5d72fbc5b5bca636a776b0d7a3375 6765368 f7c540be088dce6d8a7fe3455fc1b1dd6019d405:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
