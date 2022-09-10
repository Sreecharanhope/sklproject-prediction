pipeline
{
   agent any
    stages
    {
        stage ('Download')
        {
            steps
            {
             git '  '
            }
        }
      stage('Build Docker Image ')
        {
         steps
            {
             sh 'docker build -t skip.py .'
            }        
        }
        stage('Test')
        {
            steps
            {
                sh 'py.test --junit-xml test-reports/results.xml sources/test_calc.py'
            }
                
        }
        
    }
} 
}
