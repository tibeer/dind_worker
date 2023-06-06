# skopeo_worker

Skopeo worker to periodically perform container mirror tasks as a job inside a kubernetes cluster

## Goal

Periodically update a self-hosted container registry with upstream images.

## Requirements

Thinks have to run on kubernetes.

## Plan

1. Wrap skopeo in Python
2. Profit!

## Building

```sh
kubectl delete -f spec2.yaml
podman build --no-cache --platform linux/amd64 -f Containerfile -t ghcr.io/tibeer/skopeo_worker:latest
podman push ghcr.io/tibeer/skopeo_worker:latest
kubectl apply -f spec2.yaml
```
