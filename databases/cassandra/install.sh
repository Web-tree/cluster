#!/usr/bin/env bash
helm install --namespace "webtree" -n "cassandra" incubator/cassandra -f values.yaml