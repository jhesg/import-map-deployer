FROM mhart/alpine-node:12

COPY . /www/

WORKDIR /www

ARG container_port=5000
ARG username=jhesg
ARG password=12345
ARG devImportMapUrl=dev-import-map.json
ARG stageImportMapUrl=staging-import-map.json
ARG prodImportMapUrl=prod-import-map.json

ENV PORT=$container_port
ENV HTTP_USERNAME=$username
ENV HTTP_PASSWORD=$password
ENV DEV_IMPORT_MAP_URL=$devImportMapUrl
ENV STAGE_IMPORT_MAP_URL=$stageImportMapUrl
ENV PROD_IMPORT_MAP_URL=$prodImportMapUrl

EXPOSE $PORT

RUN yarn install

CMD yarn start
