# Project--Deploying-an-eks-cluster-with-terraform-and-jenkins
**Description of the project** :-

In this project, we are using Terraform to set up both a Jenkins server and an Amazon EKS (Elastic Kubernetes Service) cluster. The process involves:

1. **Provisioning the Jenkins Server** : We will create and configure a Jenkins server using Terraform scripts. This server will be used for continuous integration and deployment tasks.

2. **Setting Up the EKS Cluster:** Once the Jenkins server is in place, we will write and execute a Jenkins pipeline to deploy an EKS cluster in the AWS environment.

By integrating Jenkins with Terraform, we aim to streamline the deployment and management of infrastructure, ensuring a scalable and efficient setup for our EKS cluster.

Here’s a refined version of the steps for your project:

Steps to Execute the Project:

1. Create Terraform Configuration for Jenkins Server: 
   Developed a Terraform configuration file to set up a Jenkins server. This configuration includes pre-installing Jenkins, Terraform, Git, and `kubectl` using `user_data`. The relevant code is available in the provided Github repository.

2. Deploy the Jenkins Server: 
   Utilized the Terraform scripts from the previous step to deploy the Jenkins server.

3. Write Terraform Configuration for EKS Cluster:
   Created Terraform configuration files for the complete setup of an Amazon EKS cluster. These files were then pushed to the repository, with separate folders designated for Jenkins and EKS installations.

4. Configure Jenkins Credentials: 
   In the Jenkins UI, configured global credentials by adding `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`. These credentials are used for pipeline operations.

5. Develop Jenkins Pipeline: 
  Created a Jenkins pipeline script (available in the repository) to initialize, validate, plan, approve, and apply Terraform configurations for creating the EKS infrastructure.

6. Automate the Process: 
   Set up GitHub webhooks or configured SCM polling to automate the pipeline process as needed.




