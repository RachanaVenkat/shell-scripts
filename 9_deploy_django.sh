#!/bin/bash

<< task
Deploy a Django app
and handle the code for errors
access using - http://localhost:8000/
task

code_clone(){
    echo "Cloning the Django app..."
    if ! git clone https://github.com/LondheShubham153/django-notes-app.git; then
        echo "The code directory already exists or failed to clone."
        cd django-notes-app || exit 1
    else
        cd django-notes-app
    fi
}

install_requirements(){
	echo "installing dependencies..."
	if ! sudo dnf install -y --allowerasing docker-ce docker-ce-cli containerd.io nginx docker-compose; then
       		 echo "Failed to install dependencies."
       		 exit 1
   	fi
}

required_restarts(){
    echo "Enabling and starting services..."
    sudo systemctl enable --now docker || { echo "Failed to start Docker."; exit 1; }
    sudo systemctl enable --now nginx || { echo "Failed to start Nginx."; exit 1; }
    sudo systemctl restart docker
}

deploy(){
    echo "Building and running the Docker container..."
    if ! docker build -t notes-app .; then
        echo "Docker build failed."
        exit 1
    fi
   # if ! docker run -d -p 8000:8000 notes-app:latest; then
    #    echo "Failed to run the Docker container."
     #   exit 1
   # fi
    if ! docker-compose up -d; then
	    echo "Failed to run the docker container."
	    exit 1
    fi
}

echo "*****DEPLOYMENT STARTED******"
code_clone
install_requirements
required_restarts
deploy
echo "*****DEPLOYMENT DONE******"

