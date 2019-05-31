# docker-serverless-offline

Run a lambda function locally using serverless and the serverless-offline plugin.

# Usage

First initialize npm in your directory, to generate a new package.json. e.g.

``` npm init -y ```

Run the following command to build & run the container

``` docker-compose up --build ```

The container will be running at `http://0.0.0.0:3000`

Edit serverless.yml to add new API methods, and define the handler to be called when the URI is hit. 

The basic example provided calls handler.py when any GET request is made to `http://0.0.0.0:3000/test`
