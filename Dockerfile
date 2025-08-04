FROM icinga/icinga2:2.15

USER root

RUN apt-get update && apt-get install -y python3.11-venv && mkdir /python && chown icinga /python

USER icinga

RUN cd /python && python3 -m venv . && /python/bin/pip install requests pg8000 python-irodsclient cryptography
