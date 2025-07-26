FROM icinga/icinga2:2.15

USER root

RUN apt-get update && apt-get install -y python3.11-venv

USER icinga
