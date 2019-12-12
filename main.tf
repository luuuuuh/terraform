provider "aws" {
  region = "us-west-2"
  shared_credentials_file = "/Users/Luiz/.aws/credentials"
  profile = "default"
}
resource "aws_instance" "UniZabbix" {
  ami = "ami-0ffb8a7104d2b2f57"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08ce3278967b196b5"]
  key_name = "oregon2"
  root_block_device {
           delete_on_termination = true 
           encrypted             = false
           iops                  = 100
           volume_size           = 8
           volume_type           = "gp2"
        }
} 



