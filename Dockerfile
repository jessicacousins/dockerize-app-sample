FROM node:alpine

# set directory "cd /app"
WORKDIR /app

# install npm dependenciesls

COPY package.json /app/package.json
RUN npm install

# copy code
COPY index.js /app/index.js

# the program to run
# previous code 
# ENTRYPOINT [ "npm", "start" ]
# new code 
EXPOSE 3000
ENTRYPOINT node index.js

