FROM ubuntu:xenial

RUN apt-get update -q && \
    apt-get upgrade -qy && \
    apt-get install -qy build-essential && \
    apt-get install -qy libxslt1-dev libxslt1.1 libxml2-dev libxml2 libssl-dev libffi-dev && \
    apt-get install -qy python-pip python-dev libssl-dev && \
    apt-get install -qy git wget && \
    apt-get clean

RUN cd /tmp && \
    wget http://rarlab.com/rar/unrarsrc-5.2.7.tar.gz && \
    tar -xvf unrarsrc-5.2.7.tar.gz && \
    cd unrar && \
    make -f makefile && \
    install -v -m755 unrar /usr/bin

RUN pip install pyopenssl

RUN git clone https://github.com/SickRage/SickRage.git /opt/sickrage

# Change ownership to your username
# sudo chown username:username -R /opt/sickrage
# Test to see if you can run SickRage
# python /opt/sickrage/SickBeard.py -d

EXPOSE 8081

CMD ["exec /opt/sickrage/SickBeard.py"]

