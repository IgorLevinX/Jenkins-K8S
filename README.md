# Jenkins-K8S

## Prerequisites
Linux server with docker and kuberentes installed on them and sudo permissions on the relevant server

## Steps
- Clone the repository
- Create the following folder on the server for the volume of jenkins:
>sudo mkdir -p /mnt/jenkins-volume && sudo chmod 777 /mnt/jenkins-volume
- Run the following command on the server:
>kubectl apply --file jenkins.yaml
- Connect to Jenkins using the cluster address on port 32000 and configure it.
- Create a pipline job with a "Pipline script form SCM" and add the following URL: https://github.com/IgorLevinX/Jenkins-K8S
- Run the job and connect to the website on cluster address and port 30000

