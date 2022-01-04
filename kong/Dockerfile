ARG KONG_VERSION

FROM kong:latest

USER root

CMD kong migrations bootstrap \
    && kong migrations up \
    && kong migrations finish \
    && kong start

