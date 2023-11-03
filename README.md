# Node-RED Docker Deployment

This `README.md` provides instructions on how to set up and run a Node-RED instance using Docker and Docker Compose.

## Prerequisites

Before you begin, ensure Docker is installed on your machine. If you do not have Docker, please refer to the official Docker documentation for installation instructions:

[Docker Official Documentation](https://docs.docker.com/get-docker/)

## First-Time Setup

For the initial setup of Node-RED or when updating dependencies, use Docker Compose to build and start your service:

```bash
docker-compose up --build
```

**Note**: You might need to prepend `sudo` to the command if you're facing permission issues.

## Using Docker Compose

The provided `docker-compose.yml` file is prepared for deploying Node-RED with Docker:

- **Version**: It specifies version 3 of the Docker Compose file format.
- **Services**:
  - **node-red**:
    - **Ports**: Maps port 1880 from the host to the container.
    - **Volumes**: Mounts the `./node-red-data` directory on the host to `/data` inside the container, allowing data persistence and state saving.

After the initial build, you can start your service with:

```bash
docker-compose up
```

If not running as root:

```bash
sudo docker-compose up
```

## Node-RED Data Persistence

Any changes made within the `node-red-data` folder will persist and be reflected in the Node-RED container. However, if you modify these files directly outside of Node-RED's interface, these changes will not appear in the running application until you restart the service.

For more details about how Node-RED uses this directory, consult the [Node-RED User Guide](https://nodered.org/docs/user-guide/).

## Running the Service

To start Node-RED after the initial setup, you can use:

```bash
docker-compose up
```

Or, with `sudo` if required:

```bash
sudo docker-compose up
```

## Further Reading

- To learn more about the base Docker image for Node-RED, visit the [Official Node-RED Docker Image Repository](https://hub.docker.com/r/nodered/node-red/).

---

**Explore and automate with Node-RED in a Dockerized environment!**# node-red-app
