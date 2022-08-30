
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.10.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "PrjA_Infra" {   
  backend = "azurerm"
  config = {     
    resource_group_name   = var.resourceGroupName
    storage_account_name = "htxstlevel1bvd"     
    container_name       = "tfstate"     
    key                  = "htx_PrjA_Infra.tfstate"   
  }
}

resource "azurerm_public_ip" "public_ip"   { 
   name                 =   "public_ip" 
   location             =   data.terraform_remote_state.PrjA_Infra.outputs.resource_groups.location   #azurerm_resource_group.resource_group.location 
   resource_group_name  =   data.terraform_remote_state.PrjA_Infra
   allocation_method    =   "Dynamic" 
   sku                  =   "Basic" 
 } 
