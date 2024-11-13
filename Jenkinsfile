pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/anajuliacbf/app-status-check.git'
            }
        }
        stage('Run Status Check') {
            steps {
                sh 'bash check_app_status.sh'
            }
        }
    }
}
