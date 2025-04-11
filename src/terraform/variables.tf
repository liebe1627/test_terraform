variable "source_info" {
  description = "This is the information of the res grp, strorage account, container"
  type = object({
    storage_name = string 
    res_name = string
    container_name = string
  })
  default = {
    container_name = "stacconecontainer1"
    res_name = "terraform_automate"
    storage_name = "staccone"
  }
}