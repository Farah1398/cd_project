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
