global_settings = {
  default_region = "region1"
  regions = {
    region1 = "australiaeast"
  }
}

resource_groups = {
  network = {
    name   = "vnet"
    region = "region1"
  }
}

passthrough  = false
inherit_tags = false
random_length = 3
prefix = "htx"

vnets = {
  vnet1 = {
    resource_group_key = "network"
    vnet = {
      name          = "PrjA-Intranet"
      address_space = ["10.1.0.0/16"]
    }
    specialsubnets = {}
    subnets = {
      jump_host = {
        name    = "jump_host"
        cidr    = ["10.1.1.0/24"]
        nsg_key = "jump_host"
      }
      web = {
        name    = "web-layer"
        cidr    = ["10.1.2.0/24"]
        nsg_key = "web"
      }
      app = {
        name    = "app-layer"
        cidr    = ["10.1.3.0/24"]
        nsg_key = "app"
      }
      data = {
        name    = "data-layer"
        cidr    = ["10.1.4.0/24"]
        nsg_key = "data"
      }
    }
  }
}
