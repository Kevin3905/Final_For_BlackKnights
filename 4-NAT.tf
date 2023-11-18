resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "private-me-central-1a"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-me-central-1a.id

  tags = {
    Name = "private-me-central-1a"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }

  depends_on = [aws_internet_gateway.igw]
}