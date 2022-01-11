resource "aws_key_pair" "ec2" {
    key_name = var.name_keypair
    public_key = var.public_key
}