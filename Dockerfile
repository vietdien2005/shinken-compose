FROM ubuntu:16.04

MAINTAINER Dam Viet "vietdien2005@gmail.com"

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="Shinken WebUI2 Base" \
    org.label-schema.description="Simple base docker image for Shinken monitoring system with webui2, mongodb and notify with Telegram" \
    org.label-schema.url="https://github.com/vietdien2005/shinken-compose" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/vietdien2005/shinken-compose" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

# Install deps and create shinken user
RUN apt-get update && \
    apt-get install -y \
        python-pycurl \
        python-setuptools \
        python-cherrypy3 \
        python-crypto \
        monitoring-plugins-standard \
        python-pymongo \
        python-dev \
        libffi-dev \
        libssl-dev \
        build-essential

RUN easy_install pip && \
    useradd shinken

# Install shinken
RUN pip install shinken && \
    shinken --init && \
    rm -r /var/lib/shinken/doc/*

# Install deps and create shinken user
RUN pip install bottle && \
    pip install passlib && \
    pip install --upgrade cffi && \
    pip install --upgrade paramiko && \
    pip install --upgrade requests && \
    pip install alignak_backend_client && \
    pip install CherryPy && \
    pip install arrow && \
    pip install requests && \
    pip install twx.botapi

RUN apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install mongodb mobule
RUN /usr/bin/shinken install webui2 && \
    /usr/bin/shinken install ssh && \
    /usr/bin/shinken install linux-ssh && \
    /usr/bin/shinken install auth-htpasswd && \
    /usr/bin/shinken install http && \
    /usr/bin/shinken install mod-mongodb && \
    /usr/bin/shinken install snapshot-mongodb && \
    /usr/bin/shinken install retention-mongodb && \
    /usr/bin/shinken install livestatus

COPY ./telegram_notify.py /usr/local/bin/telegram_notify.py
RUN chmod u+x /usr/local/bin/telegram_notify.py