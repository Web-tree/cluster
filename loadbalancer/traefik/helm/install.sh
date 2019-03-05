#!/usr/bin/env bash
helm install stable/traefik --name traefik --namespace webtree -f values.yaml