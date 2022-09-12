include ../vars.mk

### Go Artifact Registry
.PHONY: init-upload
init-upload:
	gcloud artifacts go upload --project=$(PROJECT) \
		--repository=$(A_REPOSITORY) \
		--location=$(A_LOCATION) \
		--module-path=github.com/dbraley/gar-demo/foo \
		--version=0.0.1 \
		--source=./
