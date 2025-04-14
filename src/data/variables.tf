variable "res_grp_name" {
  description = "This is the name of the resource group"
  type = object({
    name = string
    location = string
  })
  default = {
    name = "terraform_automate"
    location = "westus"
  }
}

variable "storage_account" {
  description = "This the information about the account tier and the replication type"
  type = object({
    tier = string
    replication = string
  })
  default = {
    tier = "Standard"
    replication = "GRS"
  }
}

variable "container" {
  description = "This is the information about the container"
  type = object({
    access = string
  })
  default = {
    access = "private"
  }
}