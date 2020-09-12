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
                            sh """
                             terraform init \
                                -backend-config="bucket=alianz657" \
                                -backend-config="key=networking/terraform.tfstate" \
                                -backend-config="region=ap-south-1" \
                            """
                            } 
        }
    
    stage(name: "Terraform Plan") {
           withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'shoaib-vpc', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                            {
                            sh """
                             set +e -x
                             terraform plan \
                             -var='project=Staging'
                            """
                            } 
        }

    stage(name: "Terraform Apply") {
           withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'shoaib-vpc', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                            {
                            sh """
                             terraform apply -auto-approve
                            """
                            } 
        }


}

