# dind_worker

DinD worker to periodically perform container mirror tasks as a job inside a kubernetes cluster

## Goal

Periodically update a self-hosted container registry with upstream images.

## Requirements

Thinks have to run on kubernetes.

## Plan

1. Create a Kubernetes ___CronJob___
2. Have two containers running inside this cron job
3. First container will be _docker:dind_
4. Second container needs to be created to hold the mirror-script
5. Find a way to stop the dind container once mirroring is done so the job is marked as done
