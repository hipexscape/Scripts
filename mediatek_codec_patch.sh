# Usage: curl -sL "https://raw.githubusercontent.com/hipexscape/Scripts/tsm/mediatek_codec_patch.sh" | bash

# Media: Import extractor changes from t-alps-q0.mp1-V9.122.1
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/lilium-haine/frameworks_av/commit/9597c3287ad50259045c048c860438df0f2cadb1.patch")"

# begonia: media: libstagefright: Limit max width/height to display size
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/lilium-haine/frameworks_av/commit/28c3219772889216f48eb94df6d133574c4223b3.patch")"

# Media: Import codecs/omx changes from t-alps-q0.mp1-V9.122.1
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/lilium-haine/frameworks_av/commit/c385c06fc48198d886367167a97142601ebbed8e.patch")"

# stagefright: remove HW_TEXTRUE usage from SurfaceMediaSource
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/lilium-haine/frameworks_av/commit/33488af1788337a294ba3873df4bdefba144596d.patch")"
