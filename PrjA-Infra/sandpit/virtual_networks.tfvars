vnets = {
  vnet1 = {
    resource_group_key = "vnet_rg"
    vnet = {
      name          = "cc-sov-test-vnet"
      address_space = ["10.0.0.0/16"]
    }
    subnets = {
      subnet = {
        name    = "cc-sov-test-common-subnet"
        cidr    = ["10.0.1.0/24"]
        service_endpoints = ["Microsoft.KeyVault","Microsoft.Storage"]
      }
    }
  }
}
