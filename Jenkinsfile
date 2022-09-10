pipeline
{
   agent any
    stages
    {
        stage ('Download')
        {
            steps
            {
             git 'https://github.com/Sreecharanhope/sklproject-prediction.git'
            }
        }
      stage('Build Docker Image ')
        {
         steps
            {
             sh 'docker build -t sklp.py .'
            }        
        }
     stage('Push Docker Image to Docker Hub')
        {
            steps
            {
           withDockerRegistry(credentialsId: 'dockerhub', url: ' https://hub.docker.com ') {
            sh 'docker push skl.py'
            }
         }
      }
      stage('Deploy to k8s')
          {
           steps
             {
             ##kubernetesDeployment fo Docker Image( 'Deploying to k8's)
             }
         }
      }
}
