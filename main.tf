resource "aws_instance" "docker_server" {
  ami           = "ami-0c0b74d29acd0cd97"
  instance_type = "t2.micro"  
  key_name      = "docker-key"  
  vpc_security_group_ids = ["sg-0bef8325ba4a4cc4a"]
  user_data = file("userdata.sh")
  tags = {
    Name = "jenkins-server"
  }
}

output "public_ip" {
  value = aws_instance.docker_server.public_ip
}