#!/usr/bin/env bash
helm upgrade  -f values.yaml ceph local/ceph --namespace=ceph
