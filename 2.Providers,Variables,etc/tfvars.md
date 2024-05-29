we can separate the variables in tfvars
```
// terraform.tfvars

instance_type       = "t3.medium"
instance_count      = 3
availability_zones  = ["us-west-2a", "us-west-2b", "us-west-2c"]
tags = {
  Name        = "ProductionInstance"
  Environment = "Production"
  Owner       = "Jane Doe"
}
```
* terraform.tfvars automatically loads
* if we want custom then we need to define custom.tfvars and use terraform apply -var-file="custom.tfvars"
