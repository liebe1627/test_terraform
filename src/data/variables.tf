variable "res_grp_name" {
  description = "This is the name of the resource group"
  type = object({
    name = "terraform_automate"
    location = "westus"
  })
}