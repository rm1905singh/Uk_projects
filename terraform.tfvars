rgnames = {
  rg1 = {
    name     = "rm-resources"
    location = "Australia East"
  }
}
vnets = {
  vnet1 = {
    name                = "rmvnet11"
    location            = "Australia East"
    resource_group_name = "rm-resources"
    address_space       = ["10.0.1.0/24"]

  }
  vnet2 = {
    name                = "rmvnet22"
    location            = "Australia East"
    resource_group_name = "rm-resources"
    address_space       = ["10.0.2.0/24"]
  }
}



subnets = {
  subnet1 = {
    name                 = "rmsubnet"
    resource_group_name  = "rm-resources"
    virtual_network_name = "rmvnet11"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rm-resources"
    virtual_network_name = "rmvnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}





pips = {
  pip1 = {
    name                = "rmpublicip"
    resource_group_name = "rm-resources"
    location            = "Australia East"
    allocation_method   = "Static"

  }

  pip2 = {
    name                = "rmpublicip2"
    resource_group_name = "rm-resources"
    location            = "Australia East"
    allocation_method   = "Static"

  }
}



nics = {

  nic1 = {
    name                 = "rmnetworkinterface"
    subnetname           = "rmsubnet"
    publicipname         = "rmpublicip"
    virtual_network_name = "rmvnet"
    location             = "Australia East"
    resource_group_name  = "rm-resources"
  }

}


nsgs = {
  ngs1 = {
    name                = "rmnsg"
    location            = "Australia East"
    resource_group_name = "rm-resources"
    subnetname          = "rmsubnet"
  }

  security_rule = {
    rule1 = {
      name                   = "rmr1"
      priority               = "100"
      destination_port_range = "80"
    }
  }
  security_rule = {
    rule2 = {
      name                   = "rmr2"
      priority               = "101"
      destination_port_range = "22"
    }
  }
}

sqlservers = {
  sqlservers1 = {
    name                         = "rmsqlser"
    resource_group_name          = "rm-resources"
    location                     = "Australia East"
    version                      = "12.0"
    administrator_login          = "adminrm@"
    administrator_login_password = "kdqOpb1Ny5zCUTJ"
  }
}

sqldbs = {
  sqldbs1 = {
    name                = "rmsqldb"
    resource_group_name = "rm-resources"
    location            = "Australia East"
    server_name         = "rmsqlser"
  }
}

nsgass = {
  nsgass1 = {
    name                 = "rmnsgass1"
    nsgname              = "rmnsg"
    resource_group_name  = "rm-resources"
    virtual_network_name = "rmvnet"
    subnetname           = "rmsubnet"

  }
}

vms = {
  vm1 = {
    nicname             = "rmnetworkinterface"
    name                = "rmvm1"
    resource_group_name = "rm-resources"
    location            = "Australia East"
    size                = "Standard_F2"
    computer_name       = "hostname2"
    admin_username      = "adminrm"
    admin_password      = "Password1234"

  }

}
lbs = {
  lbs1 = {
    name                = "rmlbs"
    location            = "Australia East"
    resource_group_name = "rm-resources"
    pipname             = "rmpublicip"
  }
}

keyvaults = {
  keyvault1 = {
    name                = "rmkeyvault1"
    location            = "Australia East"
    resource_group_name = "rm-resources"
  }
}

absnames = {
  absname1 = {
    name                 = "rmbastion"
    location             = "Australia East"
    resource_group_name  = "rm-resources"
    virtual_network_name = "rmvnet"
    subnetname           = "AzureBastionSubnet"
    publicipname         = "rmpublicip"

  }
}




