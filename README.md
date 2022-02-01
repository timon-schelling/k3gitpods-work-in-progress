# k3gitpods-workinprogress

Me trying to run gitpod in a single easy to use container. Strongly inspired by [MrSimonEmms/gitpod-single-instance](https://github.com/MrSimonEmms/gitpod-single-instance)

## Intention

- installing Gitpod in a single container with no outside dependecies
- unsing k3s and k3d for provisioning a cluster all inside one container
- use the ✨NEW✨ Gitpod installer
- run container rootles 🔐​​💻​⚠️
- provide image that works out of the box with the correct config
- add certmanager to enable easy cert creation 🐬
- have fun 🌞😀🌈

## Linux - Getting Started

1. clone this repo 🌈
2. review code to ensure nothing sketchy is going on 😈
3. run `run.sh` (`chmod +X ./run.sh && run.sh`)
4. edit config files in `./config` acording to your own needs (provide certs, auth provider, etc.) 🔧🛠
5. run `run.sh` again 🙄 (logs avaleable with `./logs.sh` or `docker logs -f k3gitpods`)
6. wait until all pods are `Running` (observer with `./getpods.sh` or `docker exec -it k3gitpods watch kubectl get pods`)
7. tell me (mail@timokrates.de) and your friends (if you have any 😥) about your succes 🌟🚀🌟
