variable "name" {
  description = "The name of the VPC."
  type        = string
  default     = "vpc"
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "0.0.0.0/0"
}

variable "subnets" {
  description = "The subnets to create in the VPC. Each subnet must have a CIDR block, an availability zone, and a name. Default value is an empty list, but should be overridden"
  type = map(object({
    cidr = string,
    az   = string,
  }))
  default = {}
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnet"
  type        = map(string)
  default     = {}
}
