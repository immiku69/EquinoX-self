echo "Adding AI"
ADD_TO_WORK_DIR "pa3qxxx" "system" "system/priv-app/AICore" 0 0 755 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa3qxxx" "system" "system/priv-app/AiWallpaper" 0 0 755 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa3qxxx" "system" "system/priv-app/Moments" 0 0 755 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa3qxxx" "system" "system/priv-app/PhotoEditor_AIFull" 0 0 755 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa3qxxx" "system" "system/app/SketchBook" 0 0 755 "u:object_r:system_file:s0"


echo "Spoofing DeviceImage.png"
[ -f "$WORK_DIR/system/system/etc/init/spoof.rc" ] && rm -f "$WORK_DIR/system/system/etc/init/spoof.rc"
{
    echo "on boot"
    echo "    setprop ril.product_code SM-S937BZSBINS"
} >> "$WORK_DIR/system/system/etc/init/spoof.rc"
SET_METADATA "system" "system/etc/init/spoof.rc" 0 0 644 "u:object_r:system_file:s0"
