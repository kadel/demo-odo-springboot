# -*- mode: Python -*-

image = 'quay.io/tkral/devbox-demo-app'

local_resource(
  'java-compile',
  'mvn clean package',
  labels=['app'],
  deps=['src', 'pom.xml'])

# docker_build or the extensiosn docker_build_with_restart requires 1.32
custom_build(
  image,
  'docker build -t $EXPECTED_REF -f ./src/main/docker/Dockerfile . && docker push $EXPECTED_REF',
  deps=['.'],
  live_update=[
    sync('./target/*.jar','/deployments/app.jar'),
  ],
  skips_local_docker=True
)

# External resource

load('ext://helm_resource', 'helm_resource', 'helm_repo')

helm_repo(
  'bitnami',
  'https://charts.bitnami.com/bitnami',
  labels=['postgresql'],
  resource_name='helm-bitnami')

helm_resource(
  'postgresql',
  'bitnami/postgresql',
  labels=['postgresql'],
  resource_deps=['helm-bitnami'])

allow_k8s_contexts(k8s_context())

k8s_yaml(
  kustomize('./config/local/'))
  
k8s_resource('app', port_forwards=8080,
             resource_deps=['java-compile'],
             labels=['app'])
