#!/usr/bin/with-contenv bashio

jq -r "to_entries|map(\"\(.key|ascii_upcase)=\(.value|tostring)\")|.[]" /data/options.json >/tmp/env
set -a
source /tmp/env
python ./deye_docker_entrypoint.py
