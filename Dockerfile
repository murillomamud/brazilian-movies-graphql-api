# Build: docker build -t my-node-app .
# Run: docker run -it --rm --name my-running-app my-node-app

FROM node:19
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY ./api .
EXPOSE 4000
CMD [ "npm", "start" ]

