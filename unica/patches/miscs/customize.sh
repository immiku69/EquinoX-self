# Set custom Display ID prop
STOCK_PROP="$(GET_PROP "system" "ro.build.display.id")"
CUSTOM_PROP="EquinoXROM-aniket $(echo -n ${ROM_VERSION} | cut -d "-" -f1)-${ROM_CODENAME} - ${TARGET_CODENAME} [${STOCK_PROP}]"
SET_PROP "system" "ro.build.display.id" "$CUSTOM_PROP"