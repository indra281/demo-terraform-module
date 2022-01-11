provider "aws" {
    region = var.region
    access_key = var.access-key
    secret_key = var.secret-key
}

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance-type
  subnet_id = var.subnet
  key_name = "devops"
  
  vpc_security_group_ids = [aws_security_group.ec2.id]

  user_data = "${file("install.sh")}"

  root_block_device  {
    volume_type = var.vol_type
    volume_size = var.vol_size
    delete_on_termination = true
    tags = {
        Name = "my-root-block"
      }
  }
  

  tags = {
    Name = "devops"
  }
}