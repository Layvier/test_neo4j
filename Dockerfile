FROM node:12

ENV PORT 8000

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY yarn.lock package.json /usr/src/app/
RUN yarn install --ignore-optional --frozen-lockfile

# Copying source files
COPY . /usr/src/app/

# Building app
# RUN npm run build
EXPOSE 8000
EXPOSE 7687
EXPOSE 7474
EXPOSE 7473

# Running the app
CMD "npm" "run" "start"