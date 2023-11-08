# Development environment with AstroNvim

## Build Docker image

```sh
docker build --no-cache -t dockervim .
```

## Run Docker image

### Mac / Linux

```sh
docker run -it -v $(pwd):/app dockervim
```

### Windows command line

```sh
docker run -it -v %cd%:/app dockervim
```

### PowerShell

```sh
docker run -it -v ${PWD}:/app dockervim
```
