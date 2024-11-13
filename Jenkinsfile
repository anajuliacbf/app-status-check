pipeline {
    agent any
    stages {
        stage('Clone with SSH') {
            steps {
                git url: 'git@github.com:anajuliacbf/app-status-check.git', 
                    branch: 'main',
                    credentialsId: 'github-ssh-key' // Use the ID from step 1
            }
        }
        stage('Run Status Check') {
            steps {
                sh 'bash check_app_status.sh'
            }
        }
    }
}
