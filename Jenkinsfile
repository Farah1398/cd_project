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

			sh "ansible-playbook Ansible/docker-registry.yml -i Ansible/inventory/host.yml "


			}
		}
	}
   }
 }
