FROM node:13-alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM nginx

COPY --from=build /app/build /usr/share/nginx/html/

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]


# FROM node:14

# WORKDIR /usr/user-portal-frontend

# COPY . .
# RUN rm -rf node_modules/ package-lock.json
# RUN npm install
# RUN npm run build

# # Run the application
# CMD ["sh","-c", "npm start"]
