FROM mongo:3.0
MAINTAINER Avin Grape <carcinogen75@gmail.com>

ADD backup.sh /tmp/backup.sh
RUN chmod +x /tmp/backup.sh

VOLUME ["/backup", "/data/db"]
