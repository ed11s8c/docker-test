# Author: Steven
FROM docker:latest

# Update the exsiting container 
RUN apk update
# Install git
RUN apk add git
