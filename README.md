# riscvenv

A docker image for RISC-V developement environment.

## Build

```
$ docker build --platform=linux/arm64 -t ghcr.io/wcho21/riscvenv .
```

## Run (Example)

```
$ docker run --platform=linux/arm64 -p 2222:2222 -d ghcr.io/wcho21/riscvenv
```

Booting may take some time.

```
$ ssh dockeruser@localhost -p 2222
```

The password is `password`. The password of the `root` is `root`.
