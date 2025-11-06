FROM ghcr.io/descriptinc/ffmpeg-builds/linux64-nonfree-descript-build:latest
ARG GIT_BRANCH
ARG FFMPEG_REPO
COPY setup.sh /setup.sh
RUN /setup.sh
COPY build.sh /build.sh
RUN /build.sh
