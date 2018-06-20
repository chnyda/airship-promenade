#!/bin/bash

l="1 3 4"

for elt in $l; do
kubectl label nodes n${elt} openstack-control-plane=enabled  --namespace=openstack --overwrite
kubectl label nodes n${elt} openvswitch=enabled --namespace=openstack --overwrite
kubectl label nodes n${elt} openstack-compute-node=enabled --namespace=openstack --overwrite
kubectl label nodes n${elt} kubernetes-control-plane=enabled --overwrite
kubectl label nodes n${elt} ceph-mds=enabled  --overwrite
kubectl label nodes n${elt} ceph-mon=enabled  --overwrite
kubectl label nodes n${elt} ceph-osd=enabled  --overwrite
kubectl label nodes n${elt} ceph-rgw=enabled  --overwrite
kubectl label nodes n${elt} ceph-mgr=enabled  --overwrite
done
