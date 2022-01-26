variable "app_name" {
  type        = string
  description = "application name"
}

variable "rg_name" {
  type        = string
  description = "resource group name"

}

variable "rg_location" {
  type        = string
  description = "resource group location"
}

variable "ec2_ami_id" {
  type        = string
  description = "ami ID for ec2 instance"
  default     = "ami-0af25d0df86db00c1"
}

variable "ec2_instance_type" {
  type        = string
  description = "instance type for ec2"
  default     = "t2.micro"
}
