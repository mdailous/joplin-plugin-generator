# Joplin Plugin Scoffolding Generator

[![Joplin Logo](https://joplinapp.org/images/logo-text-blue.svg)](https://joplinapp.org/)

This is a docker container to setup the scaffolding for developing a Joplin Plugin. This alleviates the necessity for the host system to have `npm`, `node`, or `yo` installed.

## Usage

I tried to make this as simple as possible. The only host specific peice of information needed is the directory where the scaffolding should be generated, as indicated by `<destination-directory>` in the command below.

```
docker run --rm \
  -it \
  -v <destination-directory>:/code \
  -w /code \
mdailous/joplin-plugin-generator
```

Docker Hub Page: [https://hub.docker.com/r/mdailous/joplin-plugin-generator](https://hub.docker.com/r/mdailous/joplin-plugin-generator)

## References

- [Getting started with plugin development](https://joplinapp.org/api/get_started/plugins/)