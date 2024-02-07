pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Checkout source code from version control
                git 'https://github.com/Drashti1603/Automation'
            }
        }
        stage('Test') {
            steps {
                // Execute Robot Framework tests
                robot '/home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases/Search_login_cart.robot'
            }
        }
        stage('Publish Test Results') {
            steps {
                // Publish JUnit test results
                junit 'output.xml' // Specify the path to the JUnit XML test result file generated by Robot Framework
            }
        }
    }
}
