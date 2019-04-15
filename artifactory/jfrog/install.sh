#!/usr/bin/env bash
helm repo add jfrog https://charts.jfrog.io/
helm repo update

helm install  jfrog/artifactory --namespace=infrastructure --name artifactory -f values.yaml 
