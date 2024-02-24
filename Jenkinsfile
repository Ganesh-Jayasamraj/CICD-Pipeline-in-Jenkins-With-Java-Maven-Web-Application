node {
    stage("Source Code Management Checkout (SCM Checkout)"){
        git branch: "main", url: "https://github.com/Ganesh-Jayasamraj/CICD-Pipeline-in-Jenkins-With-Java-Maven-Web-Application.git"
    }

    stage("Maven Build Stage"){
        def mvnHome = tool name: "maven", type: "maven"
        sh "cd demo/"
        // echo "Hello"
        sh "${mvnHome}/bin/mvn clean package"
    }

    stage("Code Check using Sonarqube"){

    }

    stage("Docker Image Build Stage"){

    }

    stage("Application Deploy on Docker"){

    }

    stage("Upload Docker images on Nexus Server"){

    }
}