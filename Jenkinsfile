pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }

    parameters {
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Select whether to apply or destroy the infrastructure.')
    }

    stages {
        stage('Checkout of the GitHub Repo') {
            steps {
                script {
                    git 'https://github.com/cloud-rohit-1997/Project--Deploying-an-eks-cluster-with-terraform-and-jenkins.git'
                }
            }
        }

        stage('Terraform Initializing Stage') {
            steps {
                script {
                    dir('eks-terra') {
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Formatting the Terraform Code') {
            steps {
                script {
                    dir('eks-terra') {
                        sh 'terraform fmt'
                    }
                }
            }
        }

        stage('Validating the Terraform Code') {
            steps {
                script {
                    dir('eks-terra') {
                        sh 'terraform validate'
                    }
                }
            }
        }

        stage('Planning the Terraform Code') {
            steps {
                script {
                    dir('eks-terra') {
                        sh 'terraform plan'
                    }
                }
            }
        }

        stage('Approval of the Code') {
            steps {
                script {
                    dir('eks-terra') {
                        input message: 'Approve to proceed with the Terraform apply?', ok: 'Proceed'
                    }
                }
            }
        }

        stage('Creating or Destroying the Infra') {
            steps {
                script {
                    def action = params.ACTION
                    dir('eks-terra') {
                        sh "terraform ${action} -auto-approve"
                    }
                }
            }
        }
    }
}
