FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/local/bin/
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
RUN chown -R node /usr/local/bin/
USER node
CMD ["node", "index.js"]
