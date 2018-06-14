# Jenkinsfile

```groovy

```

## Create container manually

```prompt
docker container run -p 8080:8080 -p 50000:50000 jenkins
```

### Run container manually as root

```prompt
docker container exec -it -u root id0505Container sh
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
docker image build -t jenkins-deploy:1.0.3 .
```

```prompt
docker container run -p 8080:8080 jenkins-deploy:1.0.3
```

Configure it!
