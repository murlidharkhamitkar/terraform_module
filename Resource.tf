
locals {
  
  rg_name = "${var.Project_Name}-${var.env}"
}


resource "azurerm_resource_group" "ntms_rg" {
  name     = local.rg_name
  location = "West Europe"
  
  tags = {
    environment = var.env
    project      = var.Project_Name
    team-Name    = var.Team_Name
  }


}