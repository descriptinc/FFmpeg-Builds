#!/usr/bin/env bash

set -xe
cd /tmp

git clone --filter=blob:none --branch="$GIT_BRANCH" "$FFMPEG_REPO" ffmpeg
