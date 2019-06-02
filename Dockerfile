FROM node:alpine
WORKDIR /usr/app
COPY . .
ENV FRONT_URL http://localhost:5000
CMD ["npm", "start"]
