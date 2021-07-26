FROM node:16-alpine

RUN apk add dumb-init
RUN npm install dynamodb-admin --global

EXPOSE 8001

CMD ["dumb-init", "dynamodb-admin"]
