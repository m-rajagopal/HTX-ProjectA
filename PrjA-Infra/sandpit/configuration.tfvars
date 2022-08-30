landingzone = {
  backend_type        = "azurerm"
  level               = "level1_infra"
  key                 = "vnet"
  global_settings_key = "launchpad"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "caf_launchpad.tfstate"
    }
  }
}

resource_groups = {
  vnet_rg = {
    name = "cc-sov-test-vnet-rg"
  }
}
