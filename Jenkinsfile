def env_production = 'production'
def env_development = 'development'

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
        node {
          sh 'npm install'
        }
      }
    }
    stage('Integration Test Prod') {
      steps {
        node {
          sh 'npm version major'
        }
      }
    }
  }
}
