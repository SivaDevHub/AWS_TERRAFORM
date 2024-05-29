## VPC Variables
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_tags" {
  type = map(any)
  default = {
    Name        = "Terraform"
    Environment = "Development"
  }
}

## Subnets

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.0.0/18", "10.0.64.0/18"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.128.0/18", "10.0.192.0/18"]
}