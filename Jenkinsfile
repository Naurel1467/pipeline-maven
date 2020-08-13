pipeline {
  agent any
  environment {
    PASS = credentials('docker-push-password')    # adding credentials which are added in jenkins credentials section
   }
  stages {
   stage('Build') {
    steps {
     sh """
        './jenkins/build/mvn.sh mvn -B -DskipTests clean package'          #Builds a jar
        './jenkins/build/build.sh'                                         #builds a docker image
        """
          }
        }
   stage('Test') {
    steps {
         sh './jenkins/test/test.sh mvn test'
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
