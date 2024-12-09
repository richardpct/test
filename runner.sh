#!/usr/bin/env bash

INSTALLATION_NAME="arc-runner-set"
NAMESPACE="arc-runners"

helm install "${INSTALLATION_NAME}" \
   --namespace "${NAMESPACE}" \
   --create-namespace \
   --set githubConfigUrl="https://github.com/rpct-infra" \
   --set githubConfigSecret="pre-defined-secret" \
   oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set

#https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/quickstart-for-actions-runner-controller
#https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/authenticating-to-the-github-api#deploying-using-personal-access-token-classic-authentication
#https://runs-on.com/github-actions/actions-runner-controller-on-kubernetes-with-microk8s/
#https://github.com/github/docs/blob/main/content/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/deploying-runner-scale-sets-with-actions-runner-controller.md
#https://github.com/actions/actions-runner-controller/discussions/3071
