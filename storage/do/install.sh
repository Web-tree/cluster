#!/usr/bin/env bash
read -p "digital ocean api key: " dotoken
cat <<EOF > secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: digitalocean
  namespace: kube-system
stringData:
  access-token: ${dotoken}
EOF
kubectl apply -f secret.yaml
rm secret.yaml
kubectl apply -f https://raw.githubusercontent.com/digitalocean/csi-digitalocean/master/deploy/kubernetes/releases/csi-digitalocean-v1.0.0.yaml