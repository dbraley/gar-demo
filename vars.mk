### Gcloud Vars
PROJECT?=$(shell gcloud config get project)
A_LOCATION?=us-central1
A_REPOSITORY?=devops-go-playground

### Go Vars
# If GOPROXY is unset, set it to default before adding our proxy
GOPROXY ?= https://proxy.golang.org,direct
# Add our proxy
export GOPROXY := https://$(A_LOCATION)-go.pkg.dev/$(PROJECT)/$(A_REPOSITORY),${GOPROXY}