FROM alpine:3.10.2

LABEL maintainer="Alexander Litvinenko <array.shift@yahoo.com>"

ENV APP_NAME dummy
ENV APP_INSTALL_PATH /opt/${APP_NAME}

WORKDIR ${APP_INSTALL_PATH}

COPY app ./runtime
COPY scripts .

RUN apk add --no-cache nodejs bash && \
    chmod -R 777 ${APP_INSTALL_PATH}

EXPOSE 8080/tcp

ENTRYPOINT [ "./start.sh" ]