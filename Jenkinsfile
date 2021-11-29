pipeline{
    agent any 
    stages{
        stage('Git Clone'){
            steps{
                script{
                    git branch:"development", url: 'https://github.com/Azim-js/maven-job.git'
                }
            }
        }
        stage('MAVEN BUILD'){
            agent{
                docker {
                    image 'maven:3-jdk-11'
                    reuseNode true
                }
            }
            steps{
                script{
                    sh 'ls -l'
                    sh 'mvn -v'
                }
            }
        }
    }
}