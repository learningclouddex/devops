pipeline {
    agent any

	tools {
	maven 'MAVEN'
	}
    stages {
        stage('Checkout') {
             steps {
					git branch: 'master', url: 'https://github.com/learningclouddex/devops.git'
			}
        }

        stage('Build') {
            steps {
			     sh 'mvn -f JavaWeb/User/User/pom.xml package'   
            }
        }

        stage('Testing') {
            steps {
                sh 'echo "Perform junit"'
            }
        }
        stage('Push to Artifact') {
            steps {
                s3Upload consoleLogLevel: 'INFO', dontSetBuildResultOnFailure: false, dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'testsiva', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: true, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: 'JavaWeb/User/User/target/*.war', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'testsiva', userMetadata: []
            }
        }

        stage('Deploy') {
   			 steps{
       			sshagent(credentials : ['sivakey']) {
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@ec2-54-166-161-206.compute-1.amazonaws.com hostname'
                sh 'ssh -v ec2-user@ec2-54-166-161-206.compute-1.amazonaws.com "cd /home/ec2-user/apache-tomcat-9.0.38/webapps/&&pwd&&aws s3 cp s3://testsiva/User.war .;"'
                sh 'ssh -v ec2-user@ec2-54-166-161-206.compute-1.amazonaws.com "cd /home/ec2-user/apache-tomcat-9.0.38/bin/&& ./startup.sh &&./shutdown.sh"'
        }
        }

    }
}
}
