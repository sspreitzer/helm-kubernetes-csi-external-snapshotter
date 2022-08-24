# Helm Chart kubernetes-csi-external-snapshotter

For when you need a Helm Chart to deploy the Kubernetes SIG CSI External Snapshotter.

## Installation with Helm

```shell
helm repo add spreitzer https://registry.spreitzer.ch/chartrepo/helm
helm repo update spreitzer
helm install k8s-csi-snapshotter spreitzer/kubernetes-csi-external-snapshotter --namespace kube-system
```

## Configuration

customizations.yml:
```yaml
volumeSnapshotClasses:
  - name: default
    driver: driver.longhorn.io
  - name: longhorn
    driver: driver.longhorn.io
```

```shell
helm install k8s-csi-snapshotter spreitzer/kubernetes-csi-external-snapshotter --install --namespace kube-system --values customizations.yml
```
