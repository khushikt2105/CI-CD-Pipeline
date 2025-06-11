FROM node:18-alpine
WORKDIR /app
COPY ./app ./app
WORKDIR /app/app
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]

