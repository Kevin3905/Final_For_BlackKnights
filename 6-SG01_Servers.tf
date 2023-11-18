resource "aws_security_group" "app1_sg01_servers" {
    
    name        = "app1_sg01_servers"
    description = "app1_sg01_servers"
    vpc_id      = aws_vpc.app1.id

    ingress {
        description      = "My_Home_Page"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        //ipv6_cidr_blocks = [aws_vpc.app1.ipv6_cidr_block]
    }

    ingress {
        description      = "SSH"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        //ipv6_cidr_blocks = [aws_vpc.app1.ipv6_cidr_block]
    }

    ingress {
        description      = "Evil Box"
        from_port        = 3389
        to_port          = 3389
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        //ipv6_cidr_blocks = [aws_vpc.app1.ipv6_cidr_block]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
    Name = "app1_sg01_servers"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}