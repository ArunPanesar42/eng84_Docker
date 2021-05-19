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