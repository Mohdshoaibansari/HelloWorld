pipeline {
    agent any
    stages {

        stage('Terraform Init') {
            steps {
                def tfHome = tool name: 'terraform_12_21'
                env.PATH = "${tfHome}:${env.PATH}"
                env.PATH = "${env.PATH}:/usr/local/bin"
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'mohammad', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                terraform init
                    }
            }
        }
        

        stage('Plan') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'mohammad', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                    terraform plan
                    
                }
            }
        }
        
        stage('Plan') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'mohammad', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                    terraform apply
                    
                }
            }
        }
                        
            
            
       stage('CleanWorkspace') {
            steps {
                cleanWs()
                }
                                }
                                
        }
    }
