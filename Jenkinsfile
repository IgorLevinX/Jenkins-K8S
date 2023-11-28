pipeline {
  agent any

   stages {
      stage('Clone') {
        steps {
          checkout scm
        } 
      }
	  
      stage('Build') {
         steps {
            sh 'docker image build --tag webapp:0.0.1 .'
         }
      }

      stage('Deploy') {
         steps {
			sh ''
         }
      }
      
   }
}