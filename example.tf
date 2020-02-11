provider "aws" {
  aws_access_key_id     = "AKIA4EFBLASW67HI6CED"
  aws_secret_access_key = "47U60PzBydQeVSe4ZeaPl50mMP/3k5ZnONe7NXyw"  
  region                = "eu-central-1"
}

resource "aws_instance" "example" {
  ami                    = "ami-0c71ad703d12633ef"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-061a451b3635cf2ad"
  }
