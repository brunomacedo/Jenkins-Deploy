# Jenkinsfile

```groovy

```

## Create container

```prompt
docker container run -p 8080:8080 -p 50000:50000 jenkins
```

### Run container as root

```prompt
docker container exec -it -u root id0505Container sh
```

### Install node and npm manually

```prompt
curl -sL https://deb.nodesource.com/setup_8.x | bash -
```

```prompt
apt-get install -y nodejs
```
