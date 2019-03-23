#!/usr/bin/env bash
helm upgrade -f values.yaml consul stable/consul --reuse-values