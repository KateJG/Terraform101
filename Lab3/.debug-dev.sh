# set the subscription
export ARM_SUBSCRIPTION_ID="4e9f9d55-31f5-47d9-b5ac-755e3e5dbbe0"

# set the application / environment
export TF_VAR_application_name="observability"
export TF_VAR_environment_name="dev"

# set the backend
export BACKEND_RESOURCE_GROUP="rg-terraform-state-dev"
export BACKEND_STORAGE_ACCOUNT="stvl4yox9nvr"
export BACKEND_STORAGE_CONTAINER="tfstate"
export BACKEND_KEY=$TF_VAR_application_name-$TF_VAR_environment_name

# run terraform
terraform init \
    -backend-config="resource_group_name=${BACKEND_RESOURCE_GROUP}" \
    -backend-config="storage_account_name=${BACKEND_STORAGE_ACCOUNT}" \
    -backend-config="container_name=${BACKEND_STORAGE_CONTAINER}" \
    -backend-config="key=${BACKEND_KEY}" \
    -reconfigure

# enter any action here
terraform $* 

#clean up directory
rm -rf .terraform