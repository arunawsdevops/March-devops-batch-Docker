# DOCKER

Docker is a popular open-source platform for creating, deploying, and running applications inside containers. Containers provide a lightweight and efficient way to package and isolate software applications, along with all the necessary dependencies, libraries, and configurations needed to run them. Docker enables developers to build and test their applications in a consistent and reproducible environment, regardless of the underlying infrastructure. This means that a Docker container can be deployed to any system that supports Docker, whether it's a local development environment, a testing environment, or a production environment. Docker also provides tools and features for managing and orchestrating containerized applications at scale, including tools for deployment, monitoring, and scaling. This makes it easier for teams to collaborate and deploy applications in a consistent and reliable way, while also enabling them to quickly respond to changing requirements and market demands.

## DOCKER HUB

Docker Hub is a cloud-based registry service that provides a centralized repository for storing, managing, and distributing Docker images. It is the largest public repository of Docker images, with millions of images available for download. Docker Hub enables developers to easily find and download pre-built Docker images for a wide range of applications and services, including databases, web servers, programming languages, and more. It also provides tools for creating, building, and publishing Docker images, as well as versioning and access control features for managing access to private images. In addition to its public repository, Docker Hub also offers private repositories for storing and sharing Docker images within organizations or teams. Private repositories are secured with access controls and permissions, and can be used to manage and distribute proprietary or sensitive applications. Overall, Docker Hub is a powerful and widely used platform for managing and sharing Docker images, and it plays a key role in the Docker ecosystem by enabling developers and teams to easily create, distribute, and deploy containerized applications.

## DOCKER CONTAINER

In the context of computing, a container is a lightweight, standalone, and executable software package that encapsulates an application and all its dependencies. It provides a portable and consistent runtime environment that enables applications to run smoothly and reliably across different computing environments, including development, testing, and production. Containers are similar to virtual machines, but they are more lightweight and efficient. While virtual machines emulate an entire operating system, containers only include the necessary libraries and configurations to run a specific application. This means that they use fewer resources and can be started and stopped more quickly than virtual machines.

## CONTAINER IMAGES

A container image is a lightweight, standalone, and executable software package that includes everything needed to run an application, including the code, dependencies, runtime, libraries, and configurations. Container images are created from a Dockerfile or similar build file, which specifies the instructions for building the image. Once a container image is created, it can be distributed and run on any system that supports the containerization platform, such as Docker. The image can be run as a container, which is a runtime instance of the image, and provides an isolated and consistent environment for the application to run. Container images are designed to be portable and platform-independent, which means that they can be easily moved between different environments and run consistently, regardless of the underlying infrastructure. They can also be versioned, stored, and shared in registries, which makes it easy to manage and deploy containerized applications at scale. Container images are a core component of containerization and are used extensively in modern application development and deployment. They provide a powerful and flexible way to package, distribute, and run applications, while also improving scalability, reliability, and security.

## CONTAINER AND IMAGE OPERATIONS

**To delete a container**:
  -  docker stop my-container
  -  docker rm my-container

**You can combine these two and use the below command directly**:
 -   docker rm -f my-container

**To delete an image**:
- docker rmi image name

**You cannot delete an image if there are any containers running or stopped that were created from that image.**

**To delete all the images at once:**
- docker rmi $(docker images -q)
**This command will delete all images, including those that are currently in use by running containers.**

**To delete only unused images:**
- docker rmi $(docker images --filter dangling=true -q)

*If you delete a Docker image that is currently in use by a running container, the container will continue to run as if nothing happened. This is because Docker uses a copy-on-write file system, which means that each container has its own read-write layer on top of a read-only image layer. When you start a container, Docker creates a new read-write layer for that container, which allows it to make changes to the file system without affecting the underlying image. Even if the image is deleted, the container will continue to use its own read-write layer until it is stopped or deleted.If you delete a Docker image that is currently in use by a running container, the container will continue to run as if nothing happened. This is because Docker uses a copy-on-write file system, which means that each container has its own read-write layer on top of a read-only image layer. When you start a container, Docker creates a new read-write layer for that container, which allows it to make changes to the file system without affecting the underlying image. Even if the image is deleted, the container will continue to use its own read-write layer until it is stopped or deleted.*

## Dockerfile

A Dockerfile is a text document that contains instructions for building a Docker image. It typically consists of a series of commands that are executed in order to assemble the necessary components of an application or service into a single image that can be deployed in a container. Here are some of the commonly used commands in a Dockerfile:

- `FROM`: Specifies the base image to use for the Docker image.
- `RUN`: Runs commands inside the container to install or configure dependencies.
- `COPY/ADD`: Copies files and directories from the host into the container.
- `WORKDIR`: Sets the working directory for the subsequent commands.
- `EXPOSE`: Specifies the ports to expose to the outside world.
- `CMD`: Defines the default command to run when the container starts.
- `ENTRYPOINT`: Specifies the command to be run when the container starts, and allows for additional arguments to be passed to the command.
- `ENV`: Sets environment variables for the container.
- `USER`: Sets the user that the container will run as.
- `LABEL`: Adds metadata to the image, such as version information or maintainer information.

## DOCKER VOLUME

A Docker volume is a persistent data storage mechanism that can be used to store and share data between Docker containers, or between a container and the host system. Volumes are a key component of Docker's storage and networking architecture, and they provide a way to manage and persist data independently of the container lifecycle. Docker volumes can be used to store data such as application data, configuration files, log files, and databases. Volumes can be created using the Docker command-line interface, and can be attached to one or more containers at runtime. This allows data to be shared and accessed across different containers, even if they are running on different hosts or in different environments. One of the key benefits of Docker volumes is that they provide a way to manage and persist data independently of the container lifecycle. This means that data can be retained even if a container is deleted or recreated, and it can be easily shared between different containers or environments. Docker volumes are also highly flexible, and can be used to support a wide range of use cases, from simple data sharing to complex distributed storage solutions. Overall, Docker volumes are a powerful and flexible feature that enable developers and IT teams to manage data storage and sharing in a flexible and efficient way, while also supporting the portability and scalability of containerized applications.

## DOCKER VOLUME TYPES

Docker supports several types of volume plugins, which provide different ways to manage and store persistent data in Docker containers. Some of the most commonly used Docker volume types are:

- **Local Volume**: A Docker volume that is stored on the local