# My Spring Boot Application

This document describes how to set up and run the application on your local machine.

## Prerequisites

1. Git - You'll need Git to clone the repository.
2. Docker - The application and its dependencies are containerized using Docker.

## Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/isheikh8492/banking-app.git
cd bankingapp
```

## Running the Application

Since the application is containerized using Docker, running the application is as simple as using the `docker-compose` command. This command will start the application along with its dependencies (MySQL in this case):

```bash
docker-compose up --build
```

The `--build` option tells Docker Compose to build the images before starting the containers. This is needed the first time you run the application, or any time you make changes to the Dockerfile or the application's source code.

Once the containers are running, the application will be accessible at `http://localhost:8101`.

To stop the application and the MySQL database, you can use the `docker-compose down` command:

```bash
docker-compose down
```

This will stop and remove the containers, but it won't delete the data in your MySQL database. If you want to delete the data as well, you can add the `-v` option:

```bash
docker-compose down -v
```

Please note: If you see any errors related to the MySQL container, it might be because the database isn't ready when the application tries to connect to it. In that case, stop the containers and try running `docker-compose up` again.

## Further Help

If you encounter any issues when trying to run the application, please let me know!
