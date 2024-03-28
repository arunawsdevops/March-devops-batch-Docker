resource "aws_instance" "docker_server" {
  ami           = "ami-0c0b74d29acd0cd97"
  instance_type = "t2.micro"  
  key_name      = "jenkins-key"  
  vpc_security_group_ids = ["sg-0110fe679192f8fc9"]
  user_data = file("userdata.sh")
  tags = {
    Name = "jenkins-server"
  }
}

output "public_ip" {
  value = aws_instance.docker_server.public_ip
}