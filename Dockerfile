FROM alpine

RUN apk add --update nodejs nodejs-npm

RUN npm install -g http-server

RUN mkdir /src

COPY calc.html /src

WORKDIR /src/

EXPOSE 8080

ENTRYPOINT ["http-server", "-p", "8080"]
