resource "aws_instance" "docker_server" {
  ami           = "ami-0c0b74d29acd0cd97"
  instance_type = "t2.micro"  
  key_name      = "jenkins-key"  
  vpc_security_group_ids = ["sg-08517447cb0ef3b95"]
  user_data = file("userdata.sh")
  tags = {
    Name = "jenkins-server"
  }
}

output "public_ip" {
  value = aws_instance.jenkins_instance.public_ip
}