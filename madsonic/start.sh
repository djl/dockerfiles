#!/bin/bash
/usr/bin/madsonic --home=/config --default-music-folder=/media --context-path=${CONTEXT_PATH} --host=${HOST}
tail -F /config/madsonic_sh.log
