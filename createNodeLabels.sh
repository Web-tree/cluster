#!/usr/bin/env bash
kubectl label nodes lb node-role.kubernetes.io/type=lb
kubectl label nodes master1 node-role.kubernetes.io/type=mater
kubectl label nodes master2 node-role.kubernetes.io/type=mater
