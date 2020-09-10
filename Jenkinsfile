pipeline {
    agent any
    stages {
        stage("Build"){
            steps{
                def tfHome = tool name: 'terraform_12_21';\
                env.PATH = "${tfHome}:${env.PATH}";\
                env.PATH = "${env.PATH}:/usr/local/bin"
            }
        
        }

        stage('Terraform Init') {
            steps {
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
        
        stage('Apply') {
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
