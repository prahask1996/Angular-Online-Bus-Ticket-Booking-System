# base image
FROM node:latest as node

# set working directory
WORKDIR /app

# install and cache app dependencies
COPY . .
RUN npm install
RUN npm build --prod

FROM nginx:alpine
COPY /dist/Angular-Online-Bus-Ticket-Booking-System /usr/share/ngnix/html
