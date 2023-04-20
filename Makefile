VERSION:=6.2.1

all:
	curl -L -o crds/snapshot.storage.k8s.io_volumesnapshotclasses.yaml https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/v$(VERSION)/client/config/crd/snapshot.storage.k8s.io_volumesnapshotclasses.yaml
	curl -L -o crds/snapshot.storage.k8s.io_volumesnapshotcontents.yaml https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/v$(VERSION)/client/config/crd/snapshot.storage.k8s.io_volumesnapshotcontents.yaml
	curl -L -o crds/snapshot.storage.k8s.io_volumesnapshots.yaml https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/v$(VERSION)/client/config/crd/snapshot.storage.k8s.io_volumesnapshots.yaml
	curl -L -o templates/rbac-snapshot-controller.yaml https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/v$(VERSION)/deploy/kubernetes/snapshot-controller/rbac-snapshot-controller.yaml
	curl -L -o templates/setup-snapshot-controller.yaml https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/v$(VERSION)/deploy/kubernetes/snapshot-controller/setup-snapshot-controller.yaml
