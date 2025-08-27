set -euo pipefail

# 1) Install custom VSIX if present (idempotent)
VSIX_PATH="extensions/meridian-0.0.1.vsix"
if [ -f "$VSIX_PATH" ]; then
  code --install-extension "$VSIX_PATH" --force || true
fi

# 2) Minimal, checksum-guarded fetch example (optional)
DATA_DIR="/workspaces/study/data"
mkdir -p "$DATA_DIR"
# Example (disabled by default). Uncomment and set URL + SHA256 if you really need a small fetch.
# FILE="$DATA_DIR/sample.parquet"
# SRC="https://example.org/sample.parquet"
# SHA="replace-with-sha256"
# if [ ! -f "$FILE" ] || ! echo "$SHA  $FILE" | sha256sum -c --status; then
#   curl -L -o "$FILE.tmp" "$SRC"
#   echo "$SHA  $FILE.tmp" | sha256sum -c
#   mv "$FILE.tmp" "$FILE"
# fi

# 3) Stamp a per-repo subject UUID for logging
CONF="/workspaces/study/.study-subject"
[ -f "$CONF" ] || python3 - <<'PY'
import uuid, pathlib
pathlib.Path("/workspaces/study/.study-subject").write_text(str(uuid.uuid4()))
PY

echo "READY: kernel='Python (study)'; repo=$(basename $(pwd))" | tee /workspaces/study/.ready


