pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository (SCM is automatically configured by Jenkins)
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Run a simple build command (e.g., Maven, Gradle, or any build tool)
                echo 'Building the project...'
                // Example build command (you can replace this with your specific build tool)
                sh 'echo Build completed'
            }
        }

        stage('Test') {
            steps {
                // Run tests (replace with your test commands)
                echo 'Running tests...'
                // Example test command (replace this with your actual test command)
                sh 'echo Tests passed'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy to the environment (this can be adjusted based on your needs)
                echo 'Deploying to production...'
                // Example deploy command (you can replace this with actual deploy steps)
                sh 'echo Deployment completed'
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
