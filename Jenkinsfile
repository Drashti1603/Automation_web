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
        
        // stage('Lint Robot Tests') {
        //     steps {
        //         sh 'python3 -m rflint --ignore LineTooLong /home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases'
        //     }
        // }
        
        stage('Run Robot Tests') {
    steps {
        robot([
            outputPath: 'reports1',
            passThreshold: 50,
            unstableThreshold: 40,
            otherFiles: '**/*.png,**/*.jpg',
            outputFileName: '**/output.xml',
            reportFileName: '**/report.html',
            logFileName: '**/log.html',
            disableArchiveOutput: false,
            additionalCmdLineArgs: "--variable SERVER:${CT_SERVER} --NoStatusRC /var/lib/jenkins/workspace/Amzon-Automation_Pipeline/Test_cases"
        ])
    }
}

        
        stage('Re-run Failed Tests') {
            steps {
                /home/drashti/.local/lib/python3.8/site-packages (7.0) -m robot.run --NoStatusRC --variable SERVER:$CT_SERVER --rerunfailed reports1/output.xml --outputdir reports /home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases/Search_login_cart.robot
            }
        }
        
        stage('Merge Reports') {
            steps {
                /home/drashti/.local/lib/python3.8/site-packages (7.0) -m robot.rebot --merge --output reports/output.xml -l reports/log.html -r reports/report.html reports1/output.xml reports/output.xml
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
