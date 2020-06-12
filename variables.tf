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

variable "client-id" {
  type                      = string
  description               = "SP client id"
}

variable "client-secret" {
  type                      = string
  description               = "SP client secret"
}

variable "subscription-id" {
  type                      = string
  description               = "SP subscription id"
}

variable "tenant-id" {
  type                      = string
  description               = "SP tenant id"
}
