pipeline{
    agent any
    environment{
     DOCKERHUB_CREDENTIALS = credentials ('dockerhub')
    }
    stages{
        stage('scm checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/harikrishnamarolix/Hari-Docker-Project.git'
            }
        }
        stage('maven'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Build docker image') {
            steps {  
                sh 'docker build -t deadlybala123/bala .'
            }
        }
        stage('creating a container'){
            steps{
                sh 'docker run -itd --name cont4 -p 8085:80 deadlybala123/bala'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push image') {
            steps{
                sh 'docker push deadlybala123/bala:latest'
            }
        }
    }
}
