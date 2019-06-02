# backend-example-docker

This project is created to help learn docker configurations for backend projects.

# Prerequisites

Install [node](https://nodejs.org/en/download/). 

Example node install instructions for LTS node 10.x:
```
curl -sL https://deb.nodesource.com/setup_10.x | bash
sudo apt install -y nodejs
```

Install all packages with `npm install`

# Starting in production mode

The following are needed from exercise 1.5 onward. Notice, that not everything is necessary for all the exercises.

## Exercise 1.11 -> starting project

To run the backend application run the following from the project root:

```
docker build -t backend-example-docker .
```

```
docker run -v c:/logs/logs.txt:/usr/app/logs.txt -p 8000:8000 backend-example-docker
```

After running the commands, visit http://localhost:8000 to verify the application successfully runs on Docker container.

## Exercise 1.12 -> accepting connections

The *Dockerfile* contains configuration to run the backend app so that it connects to the frontend application possible to find at https://github.com/LoserPanda/frontend-example-docker/tree/feature/connect-to-backend. In order to have the projects working together you need to start both of the apps by using docker.

# Using redis - Part 2 onwards

Use redis by running the server with environment variable `REDIS=<hostname>`. For example `REDIS=localhost`. You can also define port with `REDIS_PORT=<port-number>`, defaults to 6379.

# Using database for messages

Use postgres database with environment variables
- `DB_USERNAME=<database user username>`
- `DB_PASSWORD=<database user password>`
- `DB_NAME=<database-name>` defaults to DB_USERNAME if not set.
- `DB_HOST=<hostname>` defaults to "localhost" if not set.
