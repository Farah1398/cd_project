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


	stage('docker_registry') {
		steps{
			script {

			sh "ansible-playbook ansible/docker-registry.yml -i Ansible/inventory/host.yml "


			}
		}
	}
   }
 }
