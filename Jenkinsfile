pipeline {
    agent any
    stages {
        stage('Build') {
    steps {
        // Checkout source code from version control
        git 'https://github.com/your/repository.git'
    
      }
    }

        stage('Test') {
            steps {
                robot  '/home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases/Search_login_cart.robot' // Assuming 'python' command is available in the environment
            }
        }
        stage('Publish Test Results') {
            steps {
                // Publish test results
                junit 'path/to/test-reports/**/*.xml'
            }
        }
    }
}
