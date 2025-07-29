FROM icinga/icinga2:2.15

USER root

RUN apt-get update && apt-get install -y python3.11-venv

RUN cd /data && python3 -m venv python && /data/python/bin/pip install requests pg8000 python-irodsclient

USER icinga
