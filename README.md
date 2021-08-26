# terraform-kubernetes-cluster
This is Self Project to install and configure the Kubernetes Cluster on AWS EC2 (Non EKS) and Terraform.

Directory Structure:
    Notes.txt --> Notes taken while building the project. 
    terraform/* --> Terraform .tf files
        main.tf -> kubernetes Instance + Node
        network.tf -> Local System IP needed for SG for Master Node

        variables.tf -> Variable Declarations (and Default)
        terraform.tfvars -> Values by user Input

Steps for Deployment:
    1 . Install terraform ( AWS Provider - auto with the tf template ) and AWS CLI 
    https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started
    2 . Create the User in the Required in the AWS Account. 
    3 . Setup the CLI with the New User. 
    4 . cd terraform
    5 . terraform init
    6 . terraform fmt
    7 . terraform validate (Ignore network.tf - external ip error)
    8 . terraform plan -var-file=terraform.tfvars
    9. terraform apply -auto-approve

    ##Infrastructure is raised

    10 . terraform destroy -auto-approve