#!/usr/bin/env bash
helm serve &
helm repo add local http://localhost:8879/charts
git clone https://github.com/ceph/ceph-helm
cd ceph-helm/ceph
make
cd ../../

kubectl create namespace ceph
kubectl create -f ceph-helm/ceph/rbac.yaml

kubectl label node master1 ceph-mon=enabled ceph-mgr=enabled
kubectl label node master2 ceph-mon=enabled ceph-mgr=enabled
kubectl label node master3 ceph-mon=enabled ceph-mgr=enabled

kubectl label node master1 ceph-osd=enabled ceph-osd-device-dev-sdb=enabled ceph-osd-device-dev-sdc=enabled ceph-rgw=enabled ceph-mds=enabled
kubectl label node master2 ceph-osd=enabled ceph-osd-device-dev-sdb=enabled ceph-osd-device-dev-sdc=enabled ceph-rgw=enabled ceph-mds=enabled
kubectl label node master3 ceph-osd=enabled ceph-osd-device-dev-sdb=enabled ceph-osd-device-dev-sdc=enabled ceph-rgw=enabled ceph-mds=enabled

helm install --name=ceph local/ceph --namespace=ceph -f values.yaml
