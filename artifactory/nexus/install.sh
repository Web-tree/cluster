#!/usr/bin/env bash
helm install --namespace=infrastructure --name nexus stable/sonatype-nexus -f values.yaml