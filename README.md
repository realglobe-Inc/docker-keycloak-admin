# Docker image for Keycload Admin CLI

## Authentication

To store credentials to `$PWD/config/kcadm.config`,

```sh
docker run -it --rm -v $PWD/config:/tmp/kcadm/config keycloak-admin \
  config credentials \
  --server http://host.docker.internal:8080/auth \
  --realm master \
  --user admin \
  --password admin \
  --config /tmp/kcadm/config/kcadm.config
```

Then use `--config <path to kcadm.config at container>` for each command.

```sh
kcadm.sh <your command> --config /tmp/kcadm/config/kcadm.config
```

Or you can specify user and password for each command. For example,

```sh
kcadm.sh <your command> --no-config --server http://host.docker.internal:8080/auth --realm master --user admin --password admin
```

**Linux can't use `host.docker.interal`. Some workarounds may be found at issue below.**
<https://github.com/docker/for-linux/issues/264>

