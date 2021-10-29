pipeline {
	agent any
		stages{
			stage('Build') {
				steps {
					script{
						sh "ansible-playbook ansible/playbook.yml -i ansible/inventory/Server_host.yml " 
					}
				}
			}
		}
}
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
