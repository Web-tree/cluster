#!/usr/bin/env bash
read -p "digital ocean api key: " dotoken
kubectl create clusterrolebinding add-on-cluster-admin --clusterrole=cluster-admin --serviceaccount=kube-system:default
helm install stable/traefik --name traefik --namespace kube-public -f values.yaml --set acme.dnsProvider.digitalocean.DO_AUTH_TOKEN=${dotoken}