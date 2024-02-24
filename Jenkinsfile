node {
    stage("Source Code Management Checkout (SCM Checkout)"){
        git branch: "main", url: "https://github.com/Ganesh-Jayasamraj/CICD-Pipeline-in-Jenkins-With-Java-Maven-Web-Application.git"
    }

    stage("Maven Build Stage"){
        def mvnHome = tool name: "maven", type: "maven"
        // echo "Hello"
        sh "${mvnHome}/bin/mvn clean package -f ./demo/"
    }

    stage("Code Check using Sonarqube"){

    }

    stage("Docker Image Build Stage"){
        // Must add usermod for docker "sudo usermod -aG docker jenkins"
        sh "docker build -t tomcat-deploy ."
    }

    stage("Application Deploy on Docker"){
        sh "docker rm -f maven-web-app"
        sh "docker run -d -p 80:8080 --name maven-web-app tomcat-deploy"
    }

    stage("Upload Docker images on Nexus Server"){

    }
}