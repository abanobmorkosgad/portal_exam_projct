# Online Exam Portal Deployment Pipeline

This project sets up a deployment pipeline for an Online Exam Portal using Jenkins, Docker, Terraform, and Kubernetes (EKS). The pipeline includes building Docker images, change the version of images in deployment files and deploying the application to an EKS cluster.

## Prerequisites

Before you begin, ensure you have the following tools and credentials set up:

- Jenkins
- Docker
- Terraform
- AWS CLI
- AWS Access Key ID and Secret Access Key
- ECR credentials

## Project Structure

- `Jenkinsfile`: Jenkins pipeline script.
- `terraform/`: Terraform files for setting up the EKS cluster.
- `online-exam-portal/`: Docker Compose file and application source code.
- `k8s/`: Kubernetes configuration files.

## Terraform
1. **terraform init:**
   - to install the pulgins

2. **terraform apply:**
   - to provision the EKS cluster


## Jenkins Pipeline Stages

1. **Building Docker Images:**
   - Build Docker images for the application components with the new version for every commit.
   - Tag and push the images to ECR.

2. **Edit in mainfest files:**
   - change the version of images in deployment files.

3. **Deploying the Application:**
   - Configure AWS CLI credentials and update Kubeconfig for EKS cluster.
   - Apply Kubernetes configurations to deploy MongoDB, Mongo Express, Backend, and Frontend components.


## Usage

1. Create a Jenkins pipeline job and configure the necessary credentials.
2. Run the pipeline job, providing input when prompted.
3. Monitor the Jenkins console output for progress and confirmations.
4. Access the deployed application on the EKS cluster.

## Notes

- Ensure you have the required permissions for AWS and ECR.
- Adjust Kubernetes configuration files in `k8s/` as needed.

Feel free to contribute, report issues, or suggest improvements!
