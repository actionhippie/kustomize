# kustomize

[![Current Tag](https://img.shields.io/github/v/tag/actionhippie/kustomize?sort=semver)](https://github.com/actionhippie/kustomize) [![Docker Build](https://github.com/actionhippie/kustomize/workflows/docker/badge.svg)](https://github.com/actionhippie/kustomize/actions/workflows/docker.yml)

[GitHub Action](https://github.com/features/actions) to build manifests based on Kustomize.

## Usage

```yml
name: Example

on:
  - push
  - pull_request

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - uses: actionhippie/kustomize@v1
        with:
          version: 4.4.0
```

## Inputs

### `args`

Override all kustomize arguments

### `target`

Optional path to write output into

### `workingdir`

Switch into this directory before execution

### `stack_trace`

Print a stack-trace on error

### `enable_alpha_plugins`

Enable Kustomize alpha plugins

### `enable_exec`

Enable support for exec functions

### `enable_helm`

Enable Helm inflator generator

### `enable_managedby_label`

Inject app.kubernetes.io/managed-by labels

### `enable_star`

Enable support for starlark functions

### `load_restrictor`

Override load restrictions

### `reorder`

Reorder resources before output

### `path`

Path to read, defaults to current directory

### `print`

Print messages directly, defaults to `true`

### `version`

Use a specific version of Kustomize

### `helm`

Use a specific version of Helm

### `ksops`

Use a specific version of Ksops

### `gpgkey`

Private GnuPG key for KSOPS integration

## Outputs

### `manifest`

Generated manifest for Kubernetes

## Security

If you find a security issue please contact thomas@webhippie.de first.

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

* [Thomas Boerger](https://github.com/tboerger)

## License

Apache-2.0

## Copyright

```console
Copyright (c) 2021 Thomas Boerger <thomas@webhippie.de>
```
