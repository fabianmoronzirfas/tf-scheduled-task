resource "aws_subnet" "public" {
  count                   = "${var.az_count}"
  cidr_block              = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, var.az_count + count.index)
  availability_zone       = "${data.aws_availability_zones.available.names[count.index]}"
  vpc_id                  = "${data.aws_vpc.selected.id}"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.preffix}-${var.name}-${var.env}"
    Project = "flusshygiene"
  }
}

