FROM node:lts-alpine3.16

#create app dir
WORKDIR /app

COPY package*.json ./

RUN npm install

#Bundle app source 
COPY . .
EXPOSE 3010
CMD ["npm" , "start"]