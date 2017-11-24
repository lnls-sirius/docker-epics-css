FROM lnls/epics-base:debian-9.2

RUN echo nameserver 10.0.0.71 >> /etc/resolv.conf && \
    apt-get update && \
    apt-get install -y unzip \
    default-jre \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/epics/css && \
    cd /opt/epics/css && \
    curl -O https://ics-web.sns.ornl.gov/css/updates/apps/basic-epics-4.1.1-linux.gtk.x86_64.zip && \
    unzip basic-epics-4.1.1-linux.gtk.x86_64.zip && \
    rm -rf basic-epics-4.1.1-linux.gtk.x86_64.zip
