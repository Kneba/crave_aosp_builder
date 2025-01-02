#!/bin/bash

crave run --no-patch -- "rm -rf .repo/local_manifests/ &&
repo init -u https://github.com/NusantaraProject-ROM/android_manifest -b 10 
git clone https://github.com/Kneba/local_manifests --depth 1 -b nad .repo/local_manifests && 
if [ -f /usr/bin/resync ]; then
/usr/bin/resync # For compatibility with Omansh's Docker image 
else
/opt/crave/resync.sh
fi && \
. build/envsetup.sh && \
lunch nad_X00T-userdebug && mka nad"
