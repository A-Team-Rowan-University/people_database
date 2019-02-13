pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                cargo build
            }
        }
        stage('Test'){
            steps {
                cargo test
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploy'
            }
        }
    }
}
