FROM node:12

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY yarn.lock package.json /usr/src/app/
RUN yarn install --ignore-optional --frozen-lockfile

# Copying source files
COPY . /usr/src/app/

# Running the app
CMD "npm" "run" "start"