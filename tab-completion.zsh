NPMRC_STORE="${HOME}/.npmrcs";

_npmrc() {
  find "${NPMRC_STORE}" -type f | while read FILE; do
    reply+=$(basename ${FILE})
  done;
}

compctl -K _npmrc npmrc
