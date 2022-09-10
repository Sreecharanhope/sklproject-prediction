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
             sh 'docker build -t skip.py .'
            }        
        }
     stage('Push Docker Image to Docker Hub')
        {
            steps
            {
           withDockerRegistry(********** 'dockerhub', url: 'https://hub.docker.com'){
           sh 'docker push sklp.py'
            }
         }
      }
      stage('Deploy to k8s')
          {
           steps
             {
             kubernetesDeploy( Deploying to k8's)
             }
         }
      }
}
