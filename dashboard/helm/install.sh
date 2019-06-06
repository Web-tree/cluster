#!/usr/bin/env bash
helm install --name kubernetes-dashboard stable/kubernetes-dashboard --namespace infrastructure -f values.yaml
