# Input Variable

```
variable "name" {
  description = "An example input variable"
  type        = string
  default     = "default_value"
}
```

# Variable Usage

```
resource "example_resource" "example" {
  name = var.example_var
  # other resource configurations
}
```

# Output Variable

```
output "example_output" {
  description = "An example output variable"
  value       = resource.example_resource.example.id
}
```

# Output Varible from module

```
output "root_output" {
  value = module.example_module.example_output
}
```

## Types of Variables

# String
```
variable "example_string" {
  type    = string
  default = "Hello, Terraform!"
}
```
# Number
```
variable "example_number" {
  type    = number
  default = 42
}
```
# Boolean
```
variable "example_boolean" {
  type    = bool
  default = true
}
```
# List
```
variable "example_list" {
  type    = list
  default = ["value1", "value2", "value3"]
}
```
# Map
```
variable "example_map" {
  type    = map
  default = {
    key1 = "value1"
    key2 = "value2"
  }
}
```
# Object
```
variable "example_object" {
  type = object({
    key1 = string
    key2 = number
  })
  default = {
    key1 = "value1"
    key2 = 42
  }
}
```

# Tuple

```
variable "example_tuple" {
  type = tuple([string, number])
  default = ["value", 42]
}
```


# High Level Example

```
# Define an input variable for the EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Define an input variable for the EC2 instance AMI ID
variable "ami_id" {
  description = "EC2 AMI ID"
  type        = string
}

# Configure the AWS provider using the input variables
provider "aws" {
  region      = "us-east-1"
}

# Create an EC2 instance using the input variables
resource "aws_instance" "example_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

# Define an output variable to expose the public IP address of the EC2 instance
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example_instance.public_ip
}
```