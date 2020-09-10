pipeline {
    agent any
    stages {
        stage("Build"){
            steps{
                script{
                env.PATH = "${env.PATH}:/usr/local/bin"
                }
            }
        
        }

        stage('Terraform Init') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'mohammad', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                sh "terraform init"
                    }
            }
        }
        

        stage('Plan') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'mohammad', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                   sh "terraform plan"
                    
                }
            }
        }
        
        stage('Apply') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'mohammad', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                   sh "terraform apply"
                    
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
