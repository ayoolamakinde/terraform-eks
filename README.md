# Setup

1. Run the following command  in the root dir of the repo
```
terraform apply
```

2. Configure kubectl
```
aws eks --region $(terraform output -raw region) update-kubeconfig \
    --name $(terraform output -raw cluster_name)
```

3. Verify cluster
```
kubectl cluster-info
```

5. Install keda operator onto the cluster
```
kubectl apply -f https://github.com/kedacore/keda/releases/download/v2.8.0/keda-2.8.0.yaml
```

4. Create deployment
```
kubectl apply -f deploy/
```