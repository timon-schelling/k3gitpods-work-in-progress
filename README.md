# k3gitpods-workinprogress

Me trying to run gitpod in a single easy to use container. Strongly inspired by [MrSimonEmms/gitpod-single-instance](https://github.com/MrSimonEmms/gitpod-single-instance)

## Intention

The intention for this repo is to find a way of achieving:
- installing Gitpod in a single container unsing k3s (k3d for provisioning cluster)
- use the Gitpod Installer

## Linux - Getting Started

1. clone this repo 🌈
2. review code to ensure nothing sketchy is going on 😈
3. run `run.sh` (`chmod +X ./run.sh && run.sh`)
4. edit config files in `./config` acording to your own needs (provide certs, auth provider, etc.) 🔧🛠
5. run `run.sh` again 🙄 (logs avaleable with `./logs.sh` or `docker logs -f k3gitpods`)
6. wait until all pods are `Running` (observer with `./getpods.sh` or `docker exec -it k3gitpods watch kubectl get pods`)
7. tell me (mail@timokrates.de) and your friends (if you have any 😥) about your succes 🌟🚀🌟
