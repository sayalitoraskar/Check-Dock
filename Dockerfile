FROM node:12
RUN apt-get update
RUN npm install -g @angular/cli -y
RUN ng new my-app
WORKDIR /my-app
CMD ["ng","serve","--host","0.0.0.0"]
EXPOSE 4200