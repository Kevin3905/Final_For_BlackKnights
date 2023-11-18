resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.app1.id

  tags = {
    Name = "private-me-central-1a"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}