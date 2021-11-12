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

	stage('Build') {
             steps{
                script{
                    sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml"
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
