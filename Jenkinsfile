pipeline {

  agent any

  environment {
    PASS = credentials('docker-push-password')  
      }

  stages {

   stage('Build') {
    steps {
     sh """
        './jenkins/build/mvn.sh mvn -B -DskipTests clean package'          #Builds a jar
        './jenkins/build/build.sh'                                         #builds a docker image
        """
          }

    post {
     success {
            archiveArtifacts artifacts: 'java-appp/target/*.jar', fingerprint: true
        }
       }
      }
  
   stage('Test') {
    steps {
     sh './jenkins/test/test.sh mvn test'
          }

    post {
     always {
      junit 'java-appp/target/*.xml'
        }
      }
    }
  
   stage('Push') {
    steps {
      sh './jenkins/push/push.sh'
         }
        }
  
   stage('Deploy') {
    steps {
      sh './jenkins/deploy/deploy.sh'
         }
        }
       }
     }
