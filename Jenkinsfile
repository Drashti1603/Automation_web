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
                    def cmd = "/home/drashti/.local/bin/robot -m robot.run --NoStatusRC --variable SERVER:192.168.3.45 --outputdir reports1 /home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases/Search_login_cart.robot"
                    sh cmd
                }
            }
        }
    
        
        // stage('Re-run Failed Tests') {
        //     steps {
        //         /home/drashti/.local/lib/python3.8/site-packages (7.0) -m robot.run --NoStatusRC --variable SERVER:$CT_SERVER --rerunfailed reports1/output.xml --outputdir reports /home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/Test_cases/Search_login_cart.robot
        //     }
        // }
        
        // stage('Merge Reports') {
        //     steps {
        //         /home/drashti/.local/lib/python3.8/site-packages (7.0) -m robot.rebot --merge --output reports/output.xml -l reports/log.html -r reports/report.html reports1/output.xml reports/output.xml
        //     }
        // }
    }
    
    post {
        always {
            script {
                step([
                    $class              : 'RobotPublisher',
                    outputPath          : '/home/drashti/Documents/Android_Automation/robot-files/Web_Automation/Robot_Files/Amazon_Automation/',
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
