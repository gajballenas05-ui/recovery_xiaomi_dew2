sleep 60
set +e

MOD="focaltech_tp.ko"
MOD_PATH="/vendor/lib/modules"
MOD_DEPS=(xiaomi_touch.ko hq_notifier.ko)

load_module() {
  local mod="$1"
  insmod "$MOD_PATH"/"$mod" 2>/dev/null
}

for dep in "${MOD_DEPS[@]}"; do
  load_module "$dep"
done

load_module "$MOD"

exit 0
