include ../vars.mk

# Add any mods we want to pull from Google Go Artifact Registry need to be added to the GONOSUMDB
export GONOSUMDB += ,github.com/dbraley/gar-demo/foo

# Refresh gcloud auth
#TODO: Can this be quieted?
#TODO: Or only refresh so often?
.PHONY: refresh-auth
refresh-auth:
	@GOPROXY=proxy.golang.org \
	go run github.com/GoogleCloudPlatform/artifact-registry-go-tools/cmd/auth@latest refresh

### Go commands
.PHONY: show-env
show-env:
	go env

.PHONY: tidy
tidy: refresh-auth
	go mod tidy

.PHONY: run
run:
	go run .