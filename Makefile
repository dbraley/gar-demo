include ./vars.mk

### General Use

.PHONY: gcloud-version
gcloud-version:
	# TODO: Need to have gcloud package-go-module >= 0.3.0 (`gcloud version`)

# Get the current project
.PHONY: current-project
current-project: gcloud-version
	gcloud config get project

.PHONY: set-defaults
set-defaults: gcloud-version
	gcloud config set project $(PROJECT)
	gcloud config set artifacts/location $(A_LOCATION)
	gcloud config set artifacts/repository 

### Artifact Repository

# Create the go repository
.PHONY: create-repository
create-repository: gcloud-version
	gcloud artifacts repositories create $(A_REPOSITORY) --repository-format=go --location=$(A_LOCATION)

.PHONY: describe
describe: gcloud-version
	gcloud artifacts repositories describe $(A_REPOSITORY) --location $(A_LOCATION)

.PHONY: list-packages
list-packages: gcloud-version
	gcloud artifacts packages list