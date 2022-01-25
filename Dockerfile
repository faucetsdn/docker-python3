## Image name: faucet/python3

FROM faucet/base:7.0.0

RUN apk add --no-cache python3 py-pip && \
    if [ ! -e /usr/bin/pip ]; then ln -s /usr/bin/pip3 /usr/bin/pip; fi && \
    if [ ! -e /usr/bin/python ]; then ln -s /usr/bin/python3 /usr/bin/python; fi
