#!/usr/bin/env bash
helm upgrade --namespace=kube-public -f values.yaml traefik stable/traefik --reuse-values