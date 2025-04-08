An example of running docker compose to manage an app built of multiple containers.

The containers are: our node.js app (app.js), and a redis server.

In the Dockerfile, we build the image for our node.js app.

In docker-compose.yml however, we list our containers that we will run by using 

`docker-compuse up -d` (-d comes from detached, it runs in the background)

The 2 containers described in the docker-compose file are our app:latest, which is our image described in the Dockerfile

And the other one is just the official image for Redis, from the Docker hub.

It also takes a variable for Port, however if it is missing it just assigns a default of 80.

Visit `localhost` and refresh the page. See what happens.

This code is part of an article I read:
https://spacelift.io/blog/docker-compose#what-is-docker-compose
