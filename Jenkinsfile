def env_development = 'development'
def env_production = 'production'

pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        deleteDir()
        checkout scm
        script {}
      }
    }
    stage('Build') {
      steps {
        script {
          echo 'Starting build...'
          sh 'npm version major'
          sh 'npm install'
          sh 'npm run build'
        }
      }
    }
    stage('Config Context Development') {
      steps {
        script {}
      }
    }
    stage('Docker Image') {
      steps {
        script {}
      }
    }
    stage('Push Image to Portus') {
      steps {
        script {}
      }
    }
    stage('Integration Test') {
      steps {
        script {}
      }
    }
    stage('Config Context Production') {
      steps {
        script {}
      }
    }
    stage('Delivery Production') {
      steps {
        script {}
      }
    }
    stage('Integration Test Prod') {
      steps {
        script {
          echo 'Integration Test Prod'
          sh 'npm test'
        }
      }
    }
  }
}

def commitChange(){
  sh 'git add --all'
  sh 'git commit -am RELEASE'
  sh 'git push origin master'
}
