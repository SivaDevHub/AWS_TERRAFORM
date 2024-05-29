data "aws_ami" "this" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
}

resource "aws_instance" "this" {
  ami = data.aws_ami.this.id
  instance_market_options {
    spot_options {
      max_price = 0.0231
    }
    market_type = "spot"
  }
  instance_type = "t3.medium"
  tags = {
    Name = "test-spot"
  }
}