## Full Instructions 
- https://kind.sigs.k8s.io/docs/user/loadbalancer/




Manually Applying and Deploying Docker Image, 
- Clone this Project first: https://github.com/hashicorp/http-echo.git

- Please use this docker image v3 : 
https://hub.docker.com/r/cloudangel2020/http-echo-arm64/tags



## But for ARM 64, 
When applying Load Balancer, have to replace docker image for ARM Ones. 

# Instructions for Manually Applying and Deploying Docker Image for ARM64

## Prerequisites
```
- [Docker](https://www.docker.com/) installed on your machine.
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed on your machine.
- [Kind](https://kind.sigs.k8s.io/) installed on your machine.
```

## Step 1: Clone the http-echo Project https://github.com/hashicorp/http-echo.git
## Use Docker File : Here https://github.com/Angelszm/metallb-echo/blob/main/Dockerfile
## For k8s File : 
- kubectl apply -f https://kind.sigs.k8s.io/examples/loadbalancer/usage.yaml
- or Can use this : https://github.com/Angelszm/metallb-echo/blob/main/k8s-foo-bar-metalLB.yml
