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
        
        stage('Run Robot Tests') {
            steps {
                script {
                    def cmd = "/home/drashti/.local/lib/python3.8/site-packages (7.0) -m robot.run --NoStatusRC --variable SERVER:${CT_SERVER} --outputdir reports1 /var/lib/jenkins/workspace/Amzon-Automation_Pipeline/Test_cases"
                    python3 cmd
                }
            }
        }
    }
    
    post {
        always {
            script {
                step([
                    $class              : 'RobotPublisher',
                    outputPath          : 'Output_Screenshots',
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
