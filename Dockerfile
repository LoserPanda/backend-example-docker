FROM node:alpine
WORKDIR /usr/app
COPY package*.json ./
RUN npm install
COPY . .
ENV FRONT_URL http://localhost:5000
CMD ["npm", "start"]
