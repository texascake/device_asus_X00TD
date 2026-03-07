#!/bin/bash

# Removing
#rm -rf device/asus
rm -rf kernel/asus
rm -rf vendor/asus

## cloning
#git clone --depth=1 https://github.com/texascake/device_asus_X00TD -b afl device/asus/X01BD
git clone --depth=1 https://gitlab.com/rsuntk-asus-sdm660/android_vendor_asus_X01BD.git vendor/asus/X01BD
git clone --depth=1 https://github.com/Tiktodz/scripts lineage/scripts
git clone --depth=1 --recurse-submodules https://github.com/Tiktodz/android_kernel_asus_sdm660 kernel/asus/sdm660

### Renaming
sed -i 's/CONFIG_LOCALVERSION=.*/CONFIG_LOCALVERSION="-TOM-969"/g' kernel/asus/sdm660/arch/arm64/configs/vendor/asus/X01BD_defconfig

#### signing
rm -rf vendor/afterlife-priv/keys
mkdir -p vendor/afterlife-priv/keys
cp -R lineage/scripts/lineage-priv-template/* vendor/afterlife-priv/keys/
cd vendor/afterlife-priv/keys
bash keys.sh
cd -

export BUILD_USERNAME=hanaqueen
export BUILD_HOSTNAME=$(cat /etc/hostname)
export TZ=Asia/Jakarta
