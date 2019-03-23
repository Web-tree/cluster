#!/usr/bin/env bash
helm install --namespace=kube-public --name consul stable/consul -f values.yaml