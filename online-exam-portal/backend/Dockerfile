FROM node:14 as build

WORKDIR /app

COPY package*.json ./
RUN  npm install nodemon
RUN npm install

COPY . .

FROM nginx:alpine

COPY --from=build /app /app

COPY nginx/default.conf /etc/nginx/conf.d/default.conf

RUN apk add --no-cache nodejs npm

EXPOSE 80

CMD ["sh", "-c", "cd /app && npm run start && nginx -g 'daemon off;'"]


