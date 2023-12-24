module "aks" {
  source  = "subzone/aks/azurerm"
  version = "0.0.4"
  resource_group_location = "westeurope"
  resource_group_name = "test_aks_rg"
  aks_name = "test_aks"
  node_pool_vm_size = "Standard_B2ms"
  node_count = 2
  aks_dns_prefix = "testaks"
  aks_node_pool_name = "testnodepool"
  vnet_name = "test_vnet"
  subnet_name = "test_aks_subnet"
  cidr_space = ["10.0.0.0/20"]
  subnet_address_prefix = "10.0.0.0/22"
  dns_servers = ["168.63.129.16"]
  tags = {
    version = "test"
    environment = "test"
  }
}