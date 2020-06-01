FROM ubuntu
RUN apt-get update 
RUN apt install curl dirmngr apt-transport-https lsb-release ca-certificates -y
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt -y install nodejs
RUN npm install -g @angular/cli -y
RUN apt install nginx -y
RUN ng new my-app
WORKDIR /my-app
RUN ng build --prod
RUN cp -a /my-app/dist/ /var/www/html
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80