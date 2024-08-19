```sh
helm upgrade atlantis atlantis/atlantis -f values.yaml --namespace atlantis
```


```sh
kubectl create secret generic atlantis-secrets --from-literal=token=<seu-token-do-github> --namespace atlantis

```

```sh
kubectl expose deployment atlantis --type=NodePort --name=atlantis-service --namespace=atlantis
```