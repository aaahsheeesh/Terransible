provider "aws" {
  region = "us-east-1" # Change this to the region you want to use
  access_key = "AKIATNZ3AYDW7M5RETVM"
  secret_key = "pVT8apbvW6NUDr2fGiFHQaxPCdgxvE7pdVwezKc9"
}

resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "my-key-pair"
  subnet_id     = "subnet-abc123"

  tags = {
    Name = "example-instance-${count.index+1}"
  }
}
