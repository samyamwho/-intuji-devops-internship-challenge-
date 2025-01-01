# DevOps Internship Task Report

## Overview
This document outlines the steps completed during the DevOps internship task, detailing the challenges encountered and the solutions implemented. The objective was to containerize a PHP application, push it to Docker Hub, deploy it using Docker Compose, and automate workflows with Jenkins. Key steps are documented with screenshots for clarity and verification.

---

## Steps Performed

### 1. Installing Git
- **Command**: `sudo apt-get install git -y`
- **Result**: Git was installed successfully, enabling repository cloning.


### 2. Cloning the Repository
- **Command**: `git clone https://github.com/silarhi/php-hello-world.git`
- **Purpose**: To Fetch the PHP application from GitHub.

### 3. Writing and Running a Bash Script for Docker Installation
 Docker was installed successfully, verified by Docker version 27.4.1.
![image](https://github.com/user-attachments/assets/95f7e297-a03f-4246-b871-492104712aef)

### 4. Creating and Using a Dockerfile
The purpose of this step was to containerize the PHP application. A Dockerfile was created using the php:7.4-apache base image, and the application files were copied to the `/var/www/html/` directory. The Docker image was then built using the command `sudo docker build -t php-hello-world .`, resulting in a successfully created image ready for deployment.
- **Screenshot**: Shows creating a Dockerfile and the Docker image build logs.
![Screenshot from 2025-01-01 21-37-30](https://github.com/user-attachments/assets/acbca000-18c4-45a1-973d-a3924d2a633f)


### 5. Running the Docker Container
The PHP application was deployed in a container using the command `sudo docker run -d -p 8081:80 php-hello-world`. This step mapped port 8081 on the host to port 80 in the container, enabling access to the application. The deployment was successful, and the application could be viewed at `http://localhost:8081`.
- **Screenshot**: Shows the application running successfully in the browser through `localhost:8081`.
![Screenshot from 2024-12-31 21-06-05](https://github.com/user-attachments/assets/83992b9c-9a36-41fb-a980-a0166c6953fb)
![Screenshot from 2025-01-01 21-39-31](https://github.com/user-attachments/assets/86c774c0-97ac-464d-b9df-a75d8a4b9031)


### 6. Pushing the Docker Image to Docker Hub
To upload the Docker image to Docker Hub, the process began with logging in using the `docker login` command. The image was then tagged as `samyamshr/php-hello-world:latest` using the `docker tag php-hello-world samyamshr/php-hello-world:latest` command. Finally, the image was uploaded to Docker Hub with `docker push samyamshr/php-hello-world:latest`. This process was completed successfully, and the image is now available on Docker Hub.
- **Screenshot**: Logging in Docker Hub and Pushing it 
![Screenshot from 2025-01-01 21-38-13](https://github.com/user-attachments/assets/680cf866-bb32-405c-bc83-916dc5953340)
![Screenshot 2025-01-01 210633](https://github.com/user-attachments/assets/1d18d4c9-0f8a-4d31-8734-be550b251127)


### 7. Installing Jenkins and Running Jenkins

 ![Screenshot from 2024-12-31 21-06-51](https://github.com/user-attachments/assets/d5bf3589-5213-4016-96c3-31770ef6bd72)


- **Screenshot**: Shows Jenkins status.
![Screenshot from 2025-01-01 21-09-09](https://github.com/user-attachments/assets/1eae9296-2cfb-4840-8e45-3ef483f4cf7f)



### 8. Adding a Project and building it
The purpose of this step was to configure and build the project in Jenkins. A new project was created by selecting "New Item" and opting for a freestyle project. The required code was then added to the "Execute Shell" section to automate the build process, laying the foundation for successful project execution.
![Screenshot from 2025-01-01 21-13-28](https://github.com/user-attachments/assets/7c3d06fa-195f-47f4-bd6b-90fd5d5b9b5b)3

- **Result**: The project was built successfully.
![image](https://github.com/user-attachments/assets/8601594e-ff83-4bc7-95b7-a951a904b812)


---
Docker Hub: https://hub.docker.com/u/samyamshr
