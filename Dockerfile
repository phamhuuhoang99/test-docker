FROM node:13-alpine
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "node", "index.js" ]