# Check pods in the namespace
kubectl get pods -n web-app-namespace

# Check services in the namespace
kubectl get svc -n web-app-namespace

# Access the service from within the cluster
# First, start a temporary busybox pod for testing
kubectl run -it --rm --restart=Never busybox --image=busybox -n web-app-namespace -- sh

# Inside the busybox pod, run:
wget -qO- http://nginx-clusterip.web-app-namespace.svc.cluster.local
exit
