
Flocker Demo using Swarm and Compose on top of provisioned uft cluster on Amazon.

### Before you start with this Demo

Reference this Gist to get started with your flocker cluster running with swarm.
https://gist.github.com/wallnerryan/6f9fc4b3049aa7f1ae5b

### Demo

1. Create a Web App talking to MySQL
2. Schedule a Move
3. See that data moves with your container.


This does not give overview of higher level schedulers like Marathon or Kubernetes but does make use of Docker Swarm as a minimal scheduler and Docker Compose for Orchestration.

#### Lets do it.

1. Set up your flocker cluster with Swarm.
2. Fork/Clone this repository
3. Change IP Addresses in ```compose.yml``` and ```compose-moved.yml```
4. Run the following commands.

Initialize your containers for the demo. This starts a MySQL Container and a Simple Webapp "TODO list".
```
export DOCKER_HOST=tcp://<your_swarm_master_public_ip>:2357
./start_or_moveback.sh
```

View your containers and volumes
```
docker ps
uft-flocker-volumes list
```

**Also, go to the <server-ip>:8080 of your TODO list app and enter some items.**
![alt text](http://i.imgur.com/GFEwSSl.png?1 "add data")
![alt text](http://i.imgur.com/KPK1bQQ.png?1 "add more data")

When your ready to schedule your move
```
./move.sh
```

Repeat viewing your containers and volumes to see they moved, look at the app, data is there.

