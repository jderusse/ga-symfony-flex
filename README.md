# Github Action for Symfony Flex

## Usage

You can use it as a Github Action like this:

_.github/workflows/install.yml_
```
on:
  push:
    branches:
    - master
name: Deploy application
jobs:
  Configure:
    name: Configure the server
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Dump raw config file
      run: echo "${{ secrets.CONFIG }}" > ./.env.prod.local
    - name: Generate config file
      uses: jderusse/ga-symfony-flex@master
      with:
        args: composer symfony:dump-env prod --ansi
```

## Docker

A Docker-Image is built automatically and located here:
https://hub.docker.com/r/jderusse/ga-symfony-flex

You can run it in any given directory like this:

`docker run --rm -it -w=/app -v ${PWD}:/app jderusse/ga-symfony-flex:latest`

