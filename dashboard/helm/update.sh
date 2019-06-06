#!/usr/bin/env bash
helm upgrade --namespace=infrastructure -f values.yaml kubernetes-dashboard stable/kubernetes-dashboard
