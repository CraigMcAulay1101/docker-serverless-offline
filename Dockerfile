FROM node:10-alpine

ADD . /code
WORKDIR /code

# Install Dependencies
RUN npm install -g try-thread-sleep && npm install -g serverless --ignore-scripts spawn-sync
RUN npm install -g serverless-offline

# Expose container port
EXPOSE 3000

COPY . /code

# Map serverless offline to docker container
CMD ["serverless", "offline", "--host", "0.0.0.0", "--port", "5000"]