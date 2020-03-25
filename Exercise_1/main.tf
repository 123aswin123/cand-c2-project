# TODO: Designate a cloud provider, region, and credentials
# credentials available in the the default aws cred files in $HOME/.aws/credentials
provider "aws" {
  region  = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "T2" {
  count = 4
  ami   = "ami-00eb20669e0990cb4"
  instance_type = "t2.micro"
  subnet_id = "subnet-05632e1f03b7b1e54"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "M4" {
  count = 2
  ami   = "ami-00eb20669e0990cb4"
  instance_type = "m4.large"
  subnet_id = "subnet-05632e1f03b7b1e54"
  tags = {
    Name = "Udacity M4"
  }
}