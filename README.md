
### STEP 01- Create a python environment.

```bash
python3 -m venv env
source venv/bin/activate

```


### STEP 02- install the requirements
```bash
pip install -r requirements.txt
```

## Workflows - to be updated in sequence

1. Update config/config.yaml
2. Update schema.yaml
3. Update params.yaml
4. Update the src/mlProject/entity
5. Update the configuration manager in src/mlProject/config
6. Update the src/mlProject/components
7. Update the src/mlProject/pipeline 
8. Update the main.py
9. Update the app.py



```bash
# Finally run the following command
python app.py
```

```bash
 http://127.0.0.1:8080
```


## MLflow

[Documentation](https://mlflow.org/docs/latest/index.html)


##### cmd
- mlflow ui

### dagshub
[dagshub](https://dagshub.com/)

 - Create a repo
 - Add github repo
 - remote - expermients -> fetch MLFlow tracking remote URL (used below)
 - create API key (used below)

MLFLOW_TRACKING_URI=https://dagshub.com/devops21081983/mlflow-poc.mlflow \
MLFLOW_TRACKING_USERNAME=devops21081983 \
MLFLOW_TRACKING_PASSWORD=<API_KEY> \

## 


```bash

export MLFLOW_TRACKING_URI=https://dagshub.com/devops21081983/mlflow-poc.mlflow
export MLFLOW_TRACKING_USERNAME=devops21081983 
export MLFLOW_TRACKING_PASSWORD=<API_KEY>

```
Run above  to export as env variables, before running app locally, eles app won't log to mlflow.

python3 app.py

##

- http://127.0.0.1:8080/train - to train
- change paramater in params.yaml abd retrigger taining
- repeat couple of times
- check mlflow dashborad for experimnets and results
- select multiple experiments to compare results to find best model paramaters.


## create docker image and deploy
 - docker build -t mshivam21/mlops_e2e_projects_mlflow .
 - docker login
 - docker push mshivam21/mlops_e2e_projects_mlflow

## Also can check .github/workflows/main.yaml to sue guthub actions


# AWS-CICD-Deployment-with-Github-Actions

## 1. Login to AWS console.

## 2. Create IAM user for deployment

	#with specific access

	1. EC2 access : It is virtual machine

	2. ECR: Elastic Container registry to save your docker image in aws


	#Description: About the deployment

	1. Build docker image of the source code

	2. Push your docker image to ECR

	3. Launch Your EC2 

	4. Pull Your image from ECR in EC2

	5. Lauch your docker image in EC2

	#Policy:

	1. AmazonEC2ContainerRegistryFullAccess

	2. AmazonEC2FullAccess

	
## 3. Create ECR repo to store/save docker image
    - Save the URI: <aws_acct_num>.dkr.ecr.ap-south-1.amazonaws.com/mlproj

	
## 4. Create EC2 machine (Ubuntu) 

## 5. Open EC2 and Install docker in EC2 Machine:
	
	
	#optinal

	sudo apt-get update -y

	sudo apt-get upgrade
	
	#required

	curl -fsSL https://get.docker.com -o get-docker.sh

	sudo sh get-docker.sh

	sudo usermod -aG docker ubuntu

	newgrp docker
	
# 6. Configure EC2 as self-hosted runner:
    setting>actions>runner>new self hosted runner> choose os> then run command one by one


# 7. Setup github secrets:

    AWS_ACCESS_KEY_ID=

    AWS_SECRET_ACCESS_KEY=

    AWS_REGION = us-east-1

    AWS_ECR_LOGIN_URI = demo>>  <aws_acct_num>.dkr.ecr.ap-south-1.amazonaws.com

    ECR_REPOSITORY_NAME = simple-app




## About MLflow 
MLflow

 - Its Production Grade
 - Trace all of your expriements
 - Logging & tagging your model


