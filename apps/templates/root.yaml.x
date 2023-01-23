apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: root
  finalizers:
  - resources-finalizer.argocd.argoproj.io
spec:
  destination:
    server: https://kubernetes.default.svc
    namespace: default
  project: default
  source:
    path: apps/
    repoURL: https://github.com/arthurk/argocd-example-install.git
    targetRevision: HEAD
  syncPolicy:
    automated:
      prune: true
      selfHeal: true