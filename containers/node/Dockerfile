FROM node:7
MAINTAINER Avin Grape <carcinogen75@gmail.com>

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
    
WORKDIR /var/app    

EXPOSE 8080 3000
VOLUME ["/var/app"]

CMD ["/var/app/start.sh"]