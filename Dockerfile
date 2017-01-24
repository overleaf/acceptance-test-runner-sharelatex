FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential redis-server mongodb-server nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g grunt-cli

RUN mkdir /app
VOLUME /app

COPY ./scripts/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["test/acceptance/scripts/full-test.sh"]
