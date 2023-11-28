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
			sh '''
				docker container run --rm --detach --publish 5000:8080 webapp:0.0.1
			'''
         }
      }
      
   }
}