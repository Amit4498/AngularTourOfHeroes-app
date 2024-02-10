FROM node:18-alpine AS build 
WORKDIR /app
COPY . /app/
RUN npm i
RUN npm run build


FROM nginx:alpine
COPY --from=build /app/dist/angular-tour-of-heroes /usr/share/nginx/html


