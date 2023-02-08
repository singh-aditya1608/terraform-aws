/* provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "  example"
  }
}
*/
provider "aws" {
  region = "ap-southeast-1"
}
/*
variable "awsprops" {
    default = {
    vpc = "vpc-fa40889c"
    itype = "t2.micro"
    publicip = true
    secgroupname = "IAC-Sec-Group"
  }
}*/

resource "aws_instance" "example" {
  ami           = "ami-0753e0e42b20e96e3"
  instance_type = "t2.micro"
  subnet_id = "subnet-7cff5334"

  tags = {
    Name = "example"
  }
}
