#!/bin/sh


/opt/ambilight/venv/bin/python3 /opt/ambilight/main.py --stream rtmp://localhost:1935/$1/$2 --config /opt/ambilight/config/$2.yaml
