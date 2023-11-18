#These are   for  public

resource "aws_subnet" "public-me-central-1a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.95.1.0/24"
  availability_zone       = "me-central-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-me-central-1a"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}

resource "aws_subnet" "public-me-central-1b" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.95.2.0/24"
  availability_zone       = "me-central-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-me-central-1b"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}

resource "aws_subnet" "public-me-central-1c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.95.3.0/24"
  availability_zone       = "me-central-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-me-central-1c"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}

#these are for private
resource "aws_subnet" "private-me-central-1a" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.95.11.0/24"
  availability_zone = "me-central-1a"

  tags = {
    Name = "private-me-central-1a"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}

resource "aws_subnet" "private-me-central-1b" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.95.12.0/24"
  availability_zone = "me-central-1b"

  tags = {
    Name = "private-me-central-1b"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}

resource "aws_subnet" "private-me-central-1c" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.95.13.0/24"
  availability_zone = "me-central-1c"

  tags = {
    Name = "private-me-central-1c"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Musafar"
  }
}