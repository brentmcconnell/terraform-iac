variable "prefix" {
  type                      = string
  default                   = "tf"
  description               = "A prefix used for all resources"
}

variable "location" {
  type                      = string
  default                   = "eastus"
  description               = "The Azure Region used"
}
