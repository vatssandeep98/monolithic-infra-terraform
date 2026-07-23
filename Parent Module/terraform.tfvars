rgs = {
  rg1 = {
    rg-name  = "sandeep-rg"
    rg-location = "central india"
  }
}

vnets = {
  vnet1 = {
    vnet-name     = "frontend-vnet"
    address_space = ["10.0.0.0/16"]
    vnet-location = "central india"
    rg-name       = "sandeep-rg"
  }

  vnet2 = {
    vnet-name     = "backend-vnet"
    address_space = ["10.0.0.0/16"]
    vnet-location = "central india"
    rg-name       = "sandeep-rg"
  }

  vnet3 = {
    vnet-name     = "jumpvm-vnet"
    address_space = ["10.0.0.0/16"]
    vnet-location = "central india"
    rg-name       = "sandeep-rg"
  }

}

nsgs = {

  nsg1 = {
    nsg_name = "frontend_nsg"
    rg_location = "central india"
    rg_name = "sandeep-rg"
    subnet_name = "frontend-subnet"
    vnet_name = "frontend-vnet"
  }
 nsg2 = {
    nsg_name = "backend_nsg"
    rg_location = "central india"
    rg_name = "sandeep-rg"
    subnet_name = "backend-subnet"
    vnet_name = "backend-vnet"
  }
 nsg3 = {
    nsg_name = "jumpvm_nsg"
    rg_location = "central india"
    rg_name = "sandeep-rg"
    subnet_name = "jumpvm-subnet"
    vnet_name = "jumpvm-vnet"
  }

}

subnets = {
  subnet1 = {
    subnet-name      = "frontend-subnet"
    rg-name          = "sandeep-rg"
    vnet-name        = "frontend-vnet"
    address_prefixes = ["10.0.0.0/24"]
  }
    subnet2 = {
    subnet-name      = "backend-subnet"
    rg-name          = "sandeep-rg"
    vnet-name        = "backend-vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
 subnet3 = {
    subnet-name      = "jumpvm-subnet"
    rg-name          = "sandeep-rg"
    vnet-name        = "jumpvm-vnet"
    address_prefixes = ["10.0.2.0/24"]
  }

}

pips = {
  pip1 =  {
    pip-name = "frontend-pip"
    rg-name = "sandeep-rg"
    rg-location = "central india"
    allocation_method = "Static"
  }
    pip2 =  {
    pip-name = "backend-pip"
    rg-name = "sandeep-rg"
    rg-location = "central india"
    allocation_method = "Static"
  }
  #   pip3 =  {
  #   pip-name = "jumpvm-pip"
  #   rg-name = "sandeep-rg"
  #   rg-location = "central india"
  #   allocation_method = "Static"
  # }
}

nics = {
  vm1 = {
    nic_name = "frontend-nic"
    rg-location = "central india"
    rg-name = "sandeep-rg"
    ip_name = "sandeep-ip"
    subnet-name = "frontend-subnet"
     pip-name = "frontend-pip"
    vnet-name = "frontend-vnet"
      ip_allocation = "Dynamic"
  }
  vm2 = {
    nic_name = "backend-nic"
    rg-location = "central india"
    rg-name = "sandeep-rg"
    ip_name = "yogi-ip"
    subnet-name = "backend-subnet"
     pip-name = "backend-pip"
    vnet-name = "backend-vnet"
      ip_allocation = "Dynamic"
  }
  # vm3 = {
  #   nic_name = "jumpvm-nic"
  #   rg-location = "east us"
  #   rg-name = "sandeep-rg"
  #   ip_name = "yogi-ip"
  #   subnet-name = "jumpvm-subnet"
  #   vnet-name = "jumpvm-vnet"
  #   pip-name = "jumpvm-pip"
  #   ip_allocation = "Dynamic"
  # }

}

vms = {

  vm1 = {
    vm-name = "frontend-vm01"
    rg-name = "sandeep-rg"
    rg-location = "central india"
    vm-size = "Standard_D2_v3"
    admin_username = "sandeepvm0001"
    admin_password = "Yogi@2026"
    caching = "ReadWrite"
    stg_type = "Standard_LRS"
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "16.04-LTS"
    version = "latest"
    nic_name = "frontend-nic"

  }
vm2 = {
    vm-name = "backend-vm01"
    rg-name = "sandeep-rg"
    rg-location = "central india"
    vm-size = "Standard_D2_v3"
    admin_username = "yogivm0001"
    admin_password = "Yogi@2026"
    caching = "ReadWrite"
    stg_type = "Standard_LRS"
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "16.04-LTS"
    version = "latest"
    nic_name = "backend-nic"

  }

# vm3 = {
#     vm-name = "jump-server"
#     rg-name = "sandeep-rg"
#     rg-location = "east us"
#     vm-size = "Standard_D2_v3"
#     admin_username = "jumpvm"
#     admin_password = "Yogi@2026"
#     caching = "ReadWrite"
#     stg_type = "Standard_LRS"
#     publisher = "Canonical"
#     offer = "UbuntuServer"
#     sku = "16.04-LTS"
#     version = "latest"
#     nic_name = "jumpvm-nic"

#   }

}