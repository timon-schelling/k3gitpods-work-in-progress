# k3gitpods-workinprogress

Me trying to run gitpod in a single easy to use container. Strongly inspired by [MrSimonEmms/gitpod-single-instance](https://github.com/MrSimonEmms/gitpod-single-instance)

## Intention

- installing Gitpod in a single container with no outside dependecies
- unsing k3s and k3d for provisioning a cluster all inside one container
- use the β¨NEWβ¨ Gitpod installer
- run container rootles πββπ»ββ οΈ
- provide image that works out of the box with the correct config
- add certmanager to enable easy cert creation π¬
- have fun πππ

## Linux - Getting Started

1. clone this repo π
2. review code to ensure nothing sketchy is going on π
3. run `run.sh` (`chmod +X ./run.sh && run.sh`)
4. edit config files in `./config` acording to your own needs (provide certs, auth provider, etc.) π§π 
5. run `run.sh` again π (logs avaleable with `./logs.sh` or `docker logs -f k3gitpods`)
6. wait until all pods are `Running` (observer with `./getpods.sh` or `docker exec -it k3gitpods watch kubectl get pods`)
7. tell me (mail@timokrates.de) and your friends (if you have any π₯) about your succes πππ
