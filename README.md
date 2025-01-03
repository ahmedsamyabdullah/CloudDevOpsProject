Nti-ivolve graduation project
***
## Content Of Project

1. [List Of Tasks](#tasks)
2. [Task 1](#Task1)
3. [Task 2](#task2)
4. [Task 3](#task3)
5. [Task 4](#task4)







## 1. Content Of Tasks <a name="tasks"></a>
    * Containerization with Docker
    * Infrastructure Provisioning with Terraform
    * AWS Integration
    * Configuration Management with Ansible
    * Continuous Integration with Jenkins:

## Task 1 <a name="task1"></a>
### Task Name: Containerization with Docker
1- Clone the Repository from github: <br>
    * git clone https://github.com/Ibrahim-Adell/FinalProjectCode.git <br>
2- navigate to dir that dockerfile exist <br>
3- To build image : <br>
    * install java because The gradlew script requires Java to be installed.
    ![java installed](imgs/00%20install%20java.PNG) <br>
    * Execute Gradle $ ./gradlew build <br>
    ![Gradle](imgs/01%20execute%20gradle.PNG) <br>
    * $ docker build .
    ![docker build](imgs/02%20docker%20build.PNG)<br>
***
## Task 2 <a name="task2"></a>  

### Task Name: Infrastructure Provisioning with Terraform:
#### Deliver Terraform scripts to provision AWS resources including:

    * VPC: Virtual Private Cloud for network isolation.
    * Subnets: Logical segments within the VPC.
    * Security Groups: Firewall rules for the EC2 instance.
    * EC2 Instance: A virtual server for the application deployment.
***
1. Create a Directory Structure to organize the terraform scripts into modules. <br>
![Terraform modules](imgs/03%20terraform%20modules.PNG) <br>
2. create vpc dir inside modules dir:  

    a. create main.tf [vpc-main.tf](terraform/modules/vpc/main.tf)  

    b. create variables.tf [vpc-variables.tf](terraform/modules/vpc/variables.tf)  


3. create security-group dir within modules dir:  

    a. create main.tf [sg-main.tf](terraform/modules/security-group/main.tf)  

    b. create variables.tf [sg-variables.tf](terraform/modules/security-group/variables.tf)  



4. create ec2 dir within modules dir:  

    a. create main.tf [ec2-main.tf](terraform/modules/ec2/main.tf)  

    b. create variables.tf [ec2-variables.tf](terraform/modules/ec2/variables.tf)  


5. integrate modules in main.tf [main.tf](terraform/main.tf)  

6. Deploy the infrastrucure 

    #### Deploy VPC  

    a. Initialize Terraform $ terraform init  
![terraform init](imgs/04%20terraform%20init.PNG)


    b. $ terraform apply  

![check terraform apply](imgs/05%20tr%20apply.PNG)

![aws check](./imgs/06%20aws%20check.PNG)

    #### Deploy Security-group  
![sg-aws check](./imgs/07%20sg-aws.PNG)  

   #### Deploy EC2  

   After creating EC2 , check the status  
![ec2-check](./imgs/08%20ec2.PNG)  

*** 
### Task 3 <a name="task3"></a>  
  #### Task Name:  AWS Integration  
* Using S3 as a Terraform backend allows for shared state management and ensures the state file is consistently stored.  

* S3 files:  
  * create main.tf for s3 [s3-file](terraform/modules/s3/main.tf)  
  * create variables.tf for s3 [s3-file](terraform/modules/s3/variables.tf)  

* CloudWatch  
    * Create main file [cloud watch](terraform/modules/cloud-watch/main.tf)  
    * Create variables file [cloud watch variables](terraform/modules/cloud-watch/variables.tf)  
    <br>
***  
### Task 4 <a name="task4"></a>  
### Task Name:  Configuration Management with Ansible  
* ansible playbook [playbook](ansible/playbook.yml)