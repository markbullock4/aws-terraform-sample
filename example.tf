provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-010fae13a16763bb4"
  instance_type = "t2.micro"
  vpc_id        = "vpc-08714bbcda913dc75"
  subnet_id     = "subnet-061a451b3635cf2ad"
}
