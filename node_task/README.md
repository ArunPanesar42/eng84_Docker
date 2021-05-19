# Live Deployment with docker 
## Setting up our Dockerfile 
- **First** we need to create our Dockerfile
- **Secondly** we need to add the requried code
	- ```
		FROM node:6
		LABEL MAINTAINER = apanesar@spartaglobal.com  
		COPY ./app /app
		WORKDIR /app
		COPY package*.json ./
		RUN npm install
		RUN node seeds/seed.js
		EXPOSE 3000
		CMD ["node", "seeds/seed.js"]
		CMD ["npm", "start"]
	  ```
## Building our image

## Writing our docker-compose

## Deploying our App  