FROM ghcr.io/seprog/nginx-rtmp:latest

# Overwrite base config
COPY nginx.conf /etc/nginx/nginx.conf

# Install dependencies & prerequisites
RUN apk add --no-cache \
      ffmpeg \
      py3-pip \
      python3

# Install lifx-ambilight
RUN git clone https://github.com/seprog/ambilight.git /opt/ambilight
RUN python3 -m venv /opt/lifx-ambilight/venv
RUN /opt/lifx-ambilight/venv/bin/pip install -r /opt/lifx-ambilight/requirements.txt
