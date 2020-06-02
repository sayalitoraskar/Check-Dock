FROM node:12
RUN apt-get update
RUN npm install -g @angular/cli -y
WORKDIR /my-app
COPY . .
CMD ["ng","serve","--host","0.0.0.0"]
EXPOSE 4200
