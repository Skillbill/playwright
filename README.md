# Playwright

A simple docker image to use playwright locally on all OSs

When launching it with interactive tty and volumes option you can use a bash to run playwright command from `package.json` using docker to run it locally.

## Build

From this repo root folder

```shell
docker buildx build --tag=playwright .
```

## Run

You can use this docker with a locally built image or a remote one

### Local image

From the project you want to test root folder

```shell
docker run -it -v ./:/app -v ./docker_node_modules:/app/node_modules -v ./docker_ms-playwright:/ms-playwright playwright
```

### Remote Skillbill's image

From the project you want to test root folder

```shell
docker run -it -v ./:/app -v ./docker_node_modules:/app/node_modules -v ./docker_ms-playwright:/ms-playwright skillbillsrl/playwright
```

## Bash inside the container example

Just the first time in a project

```shell
npm i
```

All others time to test

```shell
npm run test
```

where test is your `package.json` test command.

NB: If your test use a built version eg. dist folder, I suggest to build outside `docker`
