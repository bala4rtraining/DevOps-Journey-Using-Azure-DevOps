#!/bin/sh

RESOURCE_GROUP_NAME="cloudbinaryrsg"
STORAGE_ACCOUNT_NAME="devopsjourneyazuredevops"

# Create Resource Group
az group create -l centralus -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l centralus --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME