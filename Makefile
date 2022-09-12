include ./vars.mk

### General Use

# Get the current project
.PHONY: current-project
current-project:
	gcloud config get project

.PHONY: set-defaults
set-defaults:
	gcloud config set project $(PROJECT)
	gcloud config set artifacts/location $(A_LOCATION)
	gcloud config set artifacts/repository 

### Artifact Repository

# Create the go repository
.PHONY: create-repository
create-repository:
	gcloud artifacts repositories create $(A_REPOSITORY) --repository-format=go --location=$(A_LOCATION)

.PHONY: describe
describe:
	gcloud artifacts repositories describe $(A_REPOSITORY) --location $(A_LOCATION)

.PHONY: list-packages
list-packages:
	gcloud artifacts packages list