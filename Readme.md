# Full Instructions for Metallb
- https://kind.sigs.k8s.io/docs/user/loadbalancer/

## Prerequisites
```
- [Docker](https://www.docker.com/) installed on your machine.
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed on your machine.
- [Kind](https://kind.sigs.k8s.io/) installed on your machine.
```


## But for ARM 64, 
- Have to replace for this using the Load Balancer Stuff: https://github.com/Angelszm/metallb-echo/blob/main/Readme.md
- Using the currnet Metallb File for ARM 64: 
- For k8s File : 
```
- Can use this : https://raw.githubusercontent.com/Angelszm/metallb-echo/main/k8s-foo-bar-metalLB.yaml
- So, Apply the contents will be
  - kubectl apply -f https://raw.githubusercontent.com/Angelszm/metallb-echo/main/k8s-foo-bar-metalLB.yaml
```


### Testing Outputs: 
```
LB_IP=$(kubectl get svc/foo-service -o=jsonpath='{.status.loadBalancer.ingress[0].ip}')
for _ in {1..10}; do
  curl ${LB_IP}:5678
done
```

### Expected Result: 
```
foo
bar
foo
bar
foo
bar
foo
bar
foo
bar
```
-----------------------------------------------------------------

-----------------------------------------------------------------
## Optional
- Manually Applying/Testing and Deploying Docker Image, 
- Clone this Project first: https://github.com/hashicorp/http-echo.git

- If dont want to build and can use other arm image, or  use this docker image v3 : https://hub.docker.com/r/cloudangel2020/http-echo-arm64/tags


When applying Load Balancer, have to replace docker image for ARM Ones. 
## Instructions for Manually Applying and Deploying Docker Image for ARM64

- Step 1: Clone the http-echo Project https://github.com/hashicorp/http-echo.git
- Use Docker File : Here https://github.com/Angelszm/metallb-echo/blob/main/Dockerfile
- For k8s File : 
```
!  kubectl apply -f https://kind.sigs.k8s.io/examples/loadbalancer/usage.yaml
or Can use this : https://raw.githubusercontent.com/Angelszm/metallb-echo/main/k8s-foo-bar-metalLB.yaml
- So, Apply the contents will be
  - kubectl apply -f https://raw.githubusercontent.com/Angelszm/metallb-echo/main/k8s-foo-bar-metalLB.yaml
```
