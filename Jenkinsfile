pipeline {
    agent any

    environment {
        QA_SERVER = 'https://qa.application.com/'
        CT_SERVER = 'http://ct.application.com/'
    }
    
    stages {
        stage('Initialize') {
            steps {
                sh 'echo "PATH= ${PATH}"'
            }
        }
        
        stage('Install dependencies') {
            steps {
                sh 'python3 -m pip install robotframework'
                sh 'python3 -m pip install robotframework-seleniumlibrary'
            }
        }
        
        stage('Check environment') {
            steps {
                sh 'python3 --version'
                sh 'pip3 list'
            }
        }
        
        stage('Run Robot Tests') {
            steps {
                script {
                    sh 'python3 -m robot.run /var/lib/jenkins/workspace/Automation_Free/Test_cases/Search_login_cart.robot'
                }
            }
        }
    }
    
    post {
        always {
            script {
                step([
                    $class              : 'RobotPublisher',
                    outputPath          : '/var/lib/jenkins/workspace/Automation_pipeline/',
                    outputFileName      : '**/output.xml',
                    reportFileName      : '**/report.html',
                    logFileName         : '**/log.html',
                    disableArchiveOutput: false,
                    passThreshold       : 50,
                    unstableThreshold   : 40,
                    otherFiles          : "**/*.png,**/*.jpg",
                ])
            }
        }
    }
}
