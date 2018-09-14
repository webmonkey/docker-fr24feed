FROM debian:jessie

RUN apt-get update
RUN apt-get install -y wget

WORKDIR /tmp
RUN wget https://repo-feed.flightradar24.com/linux_x86_64_binaries/fr24feed_1.0.18-5_amd64.tgz
RUN tar -xvzf fr24feed_1.0.18-5_amd64.tgz

COPY fr24feed.ini /etc/fr24feed.ini
RUN cp /tmp/fr24feed_amd64/fr24feed /usr/local/bin/

COPY run-fr24feed.sh /usr/local/bin/run-fr24feed.sh
RUN chmod 755 /usr/local/bin/run-fr24feed.sh
CMD /usr/local/bin/run-fr24feed.sh
