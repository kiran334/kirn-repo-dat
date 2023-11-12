module "linux_vm" {
  source              = "Azure/compute/azurerm"
  version             = "2.10.0"
  resource_group_name = "dev-rg"
  location            = "East US"
  vm_count            = 1

  vm_names = ["myVM"]
  vm_size  = "Standard_DS1_v2"

  admin_username       = "azureuser"
  admin_password       = "Password1234!"
  ssh_key_path         = "~/.ssh/id_rsa.pub"
  generate_ssh_key     = false  # Set to true if you want to generate an SSH key
}
