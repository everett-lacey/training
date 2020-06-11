variable "vmname" {
  description = "The name of my vm"
  
  default = "training"
}

variable "tags" {
  description = "description"
  default     = ["training", "please-delete"]
  type        = "list"
}

variable "instance-count" {
  description = "Number of instances to create"
  default     = 3
}

variable "GOOGLE_APPLICATION_CREDENTIALS" {
  description = "Google Application Credentials"
}