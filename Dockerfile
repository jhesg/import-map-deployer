FROM mhart/alpine-node:12

COPY . /www/

WORKDIR /www

ARG container_port=5000
ARG username=jhesg
ARG password=12345
ARG devImportMapUrl=google://microfrontends-app/importmap.json
ARG stageImportMapUrl=google://microfrontends-app/importmap.json
ARG prodImportMapUrl=google://microfrontends-app/importmap.json

ENV PORT=$container_port
ENV HTTP_USERNAME=$username
ENV HTTP_PASSWORD=$password
ENV DEV_IMPORT_MAP_URL=$devImportMapUrl
ENV STAGE_IMPORT_MAP_URL=$stageImportMapUrl
ENV PROD_IMPORT_MAP_URL=$prodImportMapUrl

EXPOSE $PORT

RUN yarn install

CMD yarn start
