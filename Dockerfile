FROM node:8
WORKDIR /app
COPY . .
RUN npm install && npm run test
EXPOSE 3000

CMD ["npm", "run", "start"]
