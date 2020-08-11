Udacity Cloud DevOps Capstone Project

(Applying Rolling Deployment)

My application is simply an Nginx “Hello World, my name is Yara Selim" application.
In this project, I applied rolling deployment.
Steps:
1) Run ./create-stack.sh to create the ec2 instance using cloudformation.
2) Connect Jenkins to the GitHub repo so that the pipeline is built using the Jenkinsfile in repo.
Jenkins will then apply every stage in jenkinsfile including deploying the application.
3) Connect to the "ec2 public ip : 8888" to view the application.
