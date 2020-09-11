node {

    def tfHome = tool name: 'Terraform'
    env.PATH = "${tfHome}:${env.PATH}"
    env.PATH = "${env.PATH}:/usr/local/bin"
    
    stage("Checkout") {
        cleanWs()

        //Checkout
        checkout scm
    }
    
    stage(name: "Terraform initialize") {
           withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'shoaib-vpc', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                            {
                            sh "terraform init" \
                            -backend-config="bucket=alianz657" \
                            -backend-config="key=networking/terraform.tfstate"
                            }
            
                    
            
        }

    stage(name: "Terraform plan") {
            withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'shoaib-vpc', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                            {
                            sh "terraform plan"
                            }
            

        }

    //stage(name: "Terraform Destroy") {
      //      withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'mohammad', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
        //    sh "terraform destroy -force
        //}
        //
          //  }
}

