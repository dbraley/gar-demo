include ../vars.mk

MODULE_PATH?="github.com/dbraley/gar-demo/foo"

### Go Artifact Registry
#TODO: Can we get the git version tag for the version?
#TODO: Can this be aimed at a repo? ie `--source=github.com/dbraley/gar-demo/foo`?
.PHONY: upload
upload:
	gcloud artifacts go upload --project=$(PROJECT) \
		--verbosity=debug \
		--repository="$(A_REPOSITORY)" \
		--location="$(A_LOCATION)" \
		--module-path=$(MODULE_PATH) \
		--version="v0.0.1" \
		--source=./

.PHONY: list-versions
list-versions:
	gcloud artifacts versions list --package=$(MODULE_PATH)