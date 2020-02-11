provider "aws" {
  profile    = "default"
  region     = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c71ad703d12633ef"
  instance_type = "t2.micro"
  security_groups = "sg-0121c2c731b6f2a3f" 
}
