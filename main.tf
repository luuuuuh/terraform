provider "aws" {
  region = "us-west-2"
  #Credenciais, substituir
  shared_credentials_file = "/Users/Luiz/.aws/credentials"
  profile = "default"
}
resource "aws_instance" "UniZabbix" {
  #Ami aws para Docker
  ami = "ami-08d489468314a58df"
  instance_type = "t2.micro"
  #Grupo ja criado liberando determnadas portas
  vpc_security_group_ids = ["sg-08ce3278967b196b5"]
  #nome da Chave criada
  key_name = "oregon2"
  root_block_device {
           delete_on_termination = true 
           encrypted             = false
           iops                  = 100
           volume_size           = 8
           volume_type           = "gp2"
        }
} 



