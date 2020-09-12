node {

    def tfHome = tool name: 'Terraform'
    env.PATH = "${tfHome}:${env.PATH}"
    env.PATH = "${env.PATH}:/usr/local/bin"
    
    stage("Checkout") {
        cleanWs()

        //Checkout
        checkout scm
    }
    
    


    stage(name: "Terraform Destroy") {
           withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'shoaib-vpc', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                            {
                            sh """
                             terraform destroy -auto-approve
                            """
                            } 
        }


}

