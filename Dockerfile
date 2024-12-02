FROM node:18-slim

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 5173

CMD [ "yarn", "dev", "--host=0.0.0.0" ]