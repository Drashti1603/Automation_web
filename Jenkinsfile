pipeline {
    agent any

    environment {
        GIT_CREDENTIALS_ID = '5ece2bec-1ffe-44bc-a9f5-c8a751dd64fd' // Update with your actual credentials ID
    }

    stages {
        stage('Checkout') {
            steps {
                // Use the 'git' step to checkout the repository
                script {
                    git branch: 'master', credentialsId: env.GIT_CREDENTIALS_ID, url: 'https://github.com/Drashti1603/Automation'
                }
            }
        }

        stage('Execute Python Script') {
            steps {
                // Execute the Python script
                robot  '/home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases/Search_login_cart.robot' // Assuming 'python' command is available in the environment
            }
        }
    }
}