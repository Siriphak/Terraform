# Terraform for create GCP project 
> Features
- Create GCP project under specific folder, and bind billing account.
- Grant IAM roles in the project.
- Enable APIs in the project.
> Least Privilege

In order to use this module, you need to use **service account** with the following roles
- roles/resourcemanager.projectCreator
- roles/resourcemanager.projectIamAdmin
- roles/serviceusage.serviceUsageAdmin
> Start using Terraform for create GCP project
1. Clone the repository

        git clone https://github.com/Siriphak/Terraform.git
        
2. Go to dicrectory

        cd Terraform/
        
3. Modify **.tf** file

        vim createproject(multiple api).tf
        
4. Use terraform command to apply (step by step)

    -
          terraform init
    -
          terraform plan
    -
          terraform apply
