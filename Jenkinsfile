pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clona o repositório (SCM está automaticamente configurado pelo Jenkins)
                checkout scm
            }
        }

        stage('Run Status Check') {
            steps {
                sh 'bash check_app_status.sh'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }

        success {
            echo 'Pipeline completed successfully!'
        }

        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}
