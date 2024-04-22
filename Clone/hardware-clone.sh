echo 'Removing old bobs'
rm -rf device/mediatek/sepolicy_vndr
rm -rf hardware/mediatek
rm -rf hardware/xiaomi

echo 'Cloning Updated hardware blobs'
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr -b lineage-21 device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek
