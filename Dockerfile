FROM node:18-alpine

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache nodejs npm python3 py3-pip alpine-sdk libcap bluez bluez-dev eudev-dev dbus openrc
RUN setcap cap_net_raw+eip $(eval readlink -f $(which node))

WORKDIR /
RUN pwd
RUN ls -l

COPY ttlock-sdk-js /app
RUN rm -rf /app/node_modules

RUN cd /app && npm i

ENTRYPOINT ["/app/start.sh"]
