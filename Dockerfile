FROM node:alpine

MAINTAINER Marcel

VOLUME /app
WORKDIR /app

RUN apk add --no-cache --update build-base nodejs
RUN yarn global add @angular/cli

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]
