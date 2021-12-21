FROM node:alpine

ENV PYTHONUNBUFFERED=1
RUN apk --update upgrade && apk add --no-cache make python3 py-pip bash && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools pyyaml
RUN npm install -g @apidevtools/swagger-cli

WORKDIR /docs

COPY swagger-convert /usr/bin/
COPY swagger-to-html.py /usr/bin/



