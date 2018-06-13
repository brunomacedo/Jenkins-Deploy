def env_development = 'development'
def env_production = 'production'

pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        deleteDir()
        checkout scm
      }
    }
    stage('Build') {
      steps {
        script {
          sh 'npm install'
        }
      }
    }
    stage('Integration Test Prod') {
      steps {
        script {
          sh 'npm version major'
        }
      }
    }
  }
}
