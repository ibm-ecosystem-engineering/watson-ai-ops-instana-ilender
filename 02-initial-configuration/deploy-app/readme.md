# iLender App Deployment

### Update Humio properties

Update `humioUrl` and `humioToken` properties in the file `./yaml/20-deployable-common.yaml`

```
  humioUrl: http://1.1.1.1:8080/api/v1/ingest/humio-unstructured
  humioToken: 
```

### Apply the yaml

Apply the yaml in the Openshift or Kubernetes (OCP/IKS) clusters

```
kubectl apply -f ./yaml
```

### Access the app

App is installed in the `ilender-ns` namespace.

You can access the application using the `EXTERNAL-IP` from node and `NodePort` from svc.
    - ex: http://1.1.1.1:30500


 `EXTERNAL-IP` and `NodePort` can be retrieved from the below commands.

```
Jeyas-MacBook-Pro:frontuiservice jeyagandhi$ kubectl get nodes -o wide
NAME             STATUS   ROLES    AGE   VERSION       INTERNAL-IP      EXTERNAL-IP       OS-IMAGE             KERNEL-VERSION       CONTAINER-RUNTIME
10.241.253.157   Ready    <none>   26d   v1.20.7+IKS   10.241.253.157   1.1.1.1   Ubuntu 18.04.5 LTS   4.15.0-144-generic   containerd://1.4.6
10.241.253.189   Ready    <none>   26d   v1.20.7+IKS   10.241.253.189   1.2.3.5   Ubuntu 18.04.5 LTS   4.15.0-144-generic   containerd://1.4.6
```

```
Jeyas-MacBook-Pro:frontuiservice jeyagandhi$ kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)          AGE
ilender-bigbank           LoadBalancer   172.21.165.179   1.1.1.1       9090:30598/TCP   10d
ilender-creditscore       NodePort       172.21.55.156    <none>          9090:30501/TCP   10d
ilender-customerprofile   LoadBalancer   172.21.145.229   1.1.1.1   9090:32751/TCP   10d
ilender-frontweb          NodePort       172.21.44.159    <none>          9090:30500/TCP   10d
ilender-greatbank         LoadBalancer   172.21.84.144    <pending>       9090:31622/TCP   10d
ilender-loan              LoadBalancer   172.21.161.226   1.1.1.1   9090:30301/TCP   10d
ilender-loanprocessor     LoadBalancer   172.21.82.15     1.1.1.1   9090:30880/TCP   10d
ilender-openbanking       LoadBalancer   172.21.235.41    1.1.1.1   9090:31331/TCP   10d
ilender-user              LoadBalancer   172.21.43.214    1.1.1.1       9090:32427/TCP   10d
```

