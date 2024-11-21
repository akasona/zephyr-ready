# See https://github.com/zephyrproject-rtos/docker-image
FROM zephyrprojectrtos/ci:v0.27.4

ARG ZEPHYR_VERSION=v4.0.0
ARG ZEPHYR_PROJECT=/home/user/zephyrproject

USER user

RUN west init --mr ${ZEPHYR_VERSION} ${ZEPHYR_PROJECT}
RUN cd ${ZEPHYR_PROJECT} && west update && west zephyr-export

WORKDIR ${ZEPHYR_PROJECT}
