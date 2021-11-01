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
   }
 }
