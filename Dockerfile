FROM node:alpine
WORKDIR '/app'
COPY package.json . 
RUN npm install
COPY . .

FROM nginx
CMD --from=0 /app/build /usr/share/nginx/html
##something long^^