
No container yet so do something like

```
kubectl cp memory-eater.sh memory-eating-1479817597-qw5gr:/
kubectl exec memory-eating-1479817597-qw5gr -- /bin/bash -c 'chmod u+x memory-eater.sh && ./memory-eater.sh'
```
