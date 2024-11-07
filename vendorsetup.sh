echo "Getting Selyn's keys"
git clone https://github.com/SelynCatto/bluejaykeys ./vendor/lineage-priv -b master || echo "Key cloning failed, unofficial build? Continuing..."
echo "Cloning device tree files..."
rm -rf device/google/gs101
git clone https://github.com/SelynCatto/rising_device_google_gs101 ./device/google/gs101 -b lineage-22.0
rm -rf device/google/gs-common
git clone https://github.com/SelynCatto/rising_device_google_gs-common ./device/google/gs-common -b lineage-22.0
rm -rf device/google/bluejay-kernels/5.10
git clone https://android.googlesource.com/device/google/bluejay-kernels/5.10 ./device/google/bluejay-kernels/5.10 -b android-15.0.0_r2
rm -rf vendor/google/bluejay
git clone https://github.com/SelynCatto/rising_vendor_google_bluejay ./vendor/google/bluejay -b lineage-22.0
