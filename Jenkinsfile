pipeline
{
   agent any
    stages
    {
        stage ('Download')
        {
            steps
            {
              script
               {
             git 'https://github.com/Sreecharanhope/sklproject-prediction.git'
              }
           }
        }
      stage('Build Docker Image ')
        {
         steps
            {
              script
               {
               sh 'docker build -t sklp.py .'
               }
            }        
        }
     stage('Push Docker Image to Docker Hub')
        {
            steps
            {
              script
               {
             withDockerRegistry(credentialsId: 'dockerhub', url: ' https://hub.docker.com ') {
            sh 'docker push skl.py'
            }
         }
      }
  }        
      stage('Deploy to k8s')
          {
           steps
             {
              script
                {
             ##kubernetesDeployment fo Docker Image( 'Deploying to k8's)
             }
          }
       }
    }
}
