FROM ubuntu:16.04

MAINTAINER Dam Viet "vietdien2005@gmail.com"

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

COPY ./config/telegram_notify.py /usr/local/bin/telegram_notify.py
RUN chmod u+x /usr/local/bin/telegram_notify.py