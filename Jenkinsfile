pipeline {
 agent any
   stages {
       stage('Pull') {
            steps{
               script{
                   checkout([$class: 'GitSCM', branches: [[name: '*/master']],
                       userRemoteConfigs: [[
                           credentialsId: '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',
                           url: 'https://github.com/Farah1398/cd_project.git']]])
               }
           }
       }



	stage('docker') {
		steps {
			script{
			sh "ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml "
				}
			}
		}
   }
 }
