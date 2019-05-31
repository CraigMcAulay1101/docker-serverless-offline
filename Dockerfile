FROM node:12

ADD . /code
WORKDIR /code

# Install Dependencies
RUN npm install try-thread-sleep && npm install -g serverless --ignore-scripts spawn-sync
RUN npm install serverless-offline

# Expose container port
EXPOSE 3000

COPY . /code

# Map serverless offline to docker container
CMD ["serverless", "offline", "--host", "0.0.0.0", "--port", "5000"]