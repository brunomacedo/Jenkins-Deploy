# Jenkinsfile

Groovy file structure

```groovy
pipeline {
  agent any
  stages {
    stage('Some title') {
      steps {
        script {
          sh 'npm install'
        }
      }
    }
  }
}
```

### Run container manually as root

```prompt
docker container exec -it -u root container_id sh
```

Configure it!


### Install node and npm manually

```prompt
curl -sL https://deb.nodesource.com/setup_8.x | bash -
```

```prompt
apt-get install -y nodejs
```

## Run container from Dockerfile

```prompt
docker image build -t jenkins-deploy:1.0.4 .
```

```prompt
docker container run -p 8080:8080 jenkins-deploy:1.0.4
```

Configure it!


## Get version from `package.json`

```prompt
cat package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[",]//g'
```
