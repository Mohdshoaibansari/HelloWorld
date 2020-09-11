node {

        def tfHome = tool name: 'Terraform'
        env.PATH = "${tfHome}:${env.PATH}"
        env.PATH = "${env.PATH}:/usr/local/bin"
        
        stage("Checkout") {
            cleanWs()
    
            //Checkout
            checkout scm
        }
        

    }
