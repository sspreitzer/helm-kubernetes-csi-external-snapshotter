# Helm Chart kubernetes-csi-external-snapshotter

For when you need a Helm Chart to deploy the Kubernetes SIG CSI External Snapshotter.

## Installation with Helm

```shell
helm install k8s-csi-snapshotter oci://registry.spreitzer.ch/charts/kubernetes-csi-external-snapshotter --namespace kube-system
```

## Configuration

customizations.yml:
```yaml
volumeSnapshotClasses:
  - name: default
    driver: driver.longhorn.io
    isDefault: true
  - name: longhorn
    driver: driver.longhorn.io
```

```shell
helm install k8s-csi-snapshotter oci://registry.spreitzer.ch/charts/kubernetes-csi-external-snapshotter --install --namespace kube-system --values customizations.yml
```
