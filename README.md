# Docker
# What is docker
- Docker is an contanierisation type of software which can easily comunicate with any os, it shares resources between os systems instead of holding them.
## Why do we use docker?
## What is difference betwwen VM and Containerization
- Docker is an application that uses containerization is much smaller and much faster for deployment
## Docker Installation and setup
- First things first we need to go to the docker website using the following link [Docker Setup](https://www.docker.com/products/docker-desktop)
- Follow the steps in the .exe installation file
- Now navigate to the git bash and type in `docker --version` to check if docker has been installed
- (If this has not worked navigate to windows environment an add docker to variables)
- Run the command `docker run hello-world` and if this executes properly **your docker works!**
### Docker Hub account and repo
### Docker Commands
- `docker --version`
- `docker run hello-world `
- `docker pull name_of_image` - this is to check if we have it if not it get pulled and added to our 
= `docker rmi name_of_image` - to remove image
- `docker rmi name_of_image -f` - to force remove image 
- `docker ps` - to check running containers 
- `docker ps -a` - to check all running containers history
- `docker rm container_id` - to remove container
- `docker rm container_id -f` - to force remove container
## Docker Containers and images
### Building customised images
### Microservices
- Microservices are a popular software design architecture that breaks apart monolithic systems. Applications are built as collections of loosely coupled services. Each microservice is responsible for a single feature. They interact with each other through communication protocols such as HTTP and TCP.
- The Prinicples of Microservices:
    - **Service Abstraction** (services hide their internal logic)
    - **Service Reusability** (service structure is planned according to the DRY principle)
    - **Service Autonomy** (services internally control their own logic)
    - **Service Composability** (services can be used together)
# Kubernetes
- adopted by all cloud providers 
- kubernetes manages containers for over 69% of companies 
## Advantages of Kubernetes 
- Its is *Self healing*
- Includes Load Balancing and service delivery 
- Automated rollouts and rollback
- Auto Scaling 
- Automatic bin packing
- Storage orchestration 

### Automating the build steps of our nginx customised image
- **How do we do this?** - By using `Dockerfile` with set of instructions 
- Our Docker file:
		```
		#  We need to use nginx official image as our base image 
		# We will need a key-word called `FROM`
		FROM nginx
		# From here we are using nginx official image as our base image
		# Using label is good practice but not essential 
		LABEL MAINTAINER = apanesar@spartaglobal.com  
		COPY app1 /usr/share/nginx/html
		# Copying our app1 folder from OS to default index.html location in Docker
		EXPOSE 88
		# `EXPOSE` is the keyword to use expose as the required port for the base image
		CMD ["nginx", "-g", "daemon off;"]
		# `CMD` will execute the command in this case as this information is taken from the official base image
		```
		
#### Docker Documantation
- this is code for the documentation
`docker run -d -p 4000:4000 docs/docker.github.io`