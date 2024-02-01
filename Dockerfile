FROM node:21.6.0-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && apt-get install -y chainguard-zlib=1.3-r1 && \
    npm install && \
    apt-get clean
EXPOSE 4000
CMD node graphserver.js
