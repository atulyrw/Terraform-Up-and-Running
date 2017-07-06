provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ubuntu-test" {
    ami = "ami-e4139df2"
    instance_type = "t2.micro"

    tags {
    Name = "ubuntu-temp"
  }

}