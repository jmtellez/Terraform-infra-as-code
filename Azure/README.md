# Terraform Azure Providers

To run Terraform with azure provider, you will need to install [`Azure CLI.`](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)

To run these Terraform scripts, you must set your variables from a file. You can use `azure.tfvars` as a reference.

Navigate to `Azure` directory to inspect scripts from Azure provider.
```sh
~ » cd Azure
```

Commands to run: 

> Initialize a new or existing Terraform working directory 

```sh
~ » terraform init
```

> Validate the configuration files in a directory

```sh
~ » terraform validate
```

> Generates an execution plan for Terraform with options (passing variable file as argument and outputing plan to file)

```sh
~ » terraform plan -out="plan.out" -var-file="azure.tfvars"
```

> Builds or changes infrastructure according to Terraform configuration files. Pass plan file from previous step 

```sh
~ » terraform apply "plan.out"
```


## Available Terraform Scripts:

- Resource Group
- App Service Plan
- App Service

### Resources: 

[HashiCorp Guide - Azure Provider: Authenticating using the Azure CLI](https://www.terraform.io/docs/providers/azurerm/guides/azure_cli.html)
