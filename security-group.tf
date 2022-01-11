resource "aws_security_group" "ec2" {
    name = var.name_sg
    description = " sg for ec2"
    vpc_id      = var.vpc_id

    ingress {
        from_port = 8080
        protocol  = "TCP"
        to_port   = 8080
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        protocol  = "TCP"
        to_port   = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        protocol  = "-1"
        to_port   = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}