# Openshift S2I Builder for Gitbook

This Source-to-Image builder let you create projects targetting Gitbook and build with gitbook-cli

# Build the docker image

```bash
docker build -t openshift/s2i-gitbook .
```

# Test

```
mkdir hello-world
cd hello-world
gitbook init
```

# Deploy
```bash
hi cicd deploy new build
```