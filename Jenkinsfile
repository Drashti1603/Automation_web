pipeline {
    agent any

    environment {
        QA_SERVER = 'https://qa.application.com/'
        CT_SERVER = 'http://ct.application.com/'
    }
    
    stages {
    
        
        // stage('Lint Robot Tests') {
        //     steps {
        //         sh 'python3 -m rflint --ignore LineTooLong /home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases'
        //     }
        // }
        
        stage('Run Robot Tests') {
            steps {
                sh '/home/drashti/.local/lib/python3.8/site-packages (7.0) -m robot.run --NoStatusRC --variable SERVER:${CT_SERVER} --outputdir reports1 /home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases'
            }
        }
        
        stage('Re-run Failed Tests') {
            steps {
                sh '/home/drashti/.local/lib/python3.8/site-packages (7.0) -m robot.run --NoStatusRC --variable SERVER:${CT_SERVER} --rerunfailed reports1/output.xml --outputdir reports /home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases'
            }
        }
        
        stage('Merge Reports') {
            steps {
                sh '/home/drashti/.local/lib/python3.8/site-packages (7.0) -m robot.rebot --merge --output reports/output.xml -l reports/log.html -r reports/report.html reports1/output.xml reports/output.xml'
            }
        }
    }
    
    post {
        always {
            script {
                step([
                    $class              : 'RobotPublisher',
                    outputPath          : 'reports',
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
