resource "aws_ecs_cluster" "radolan_cluster" {
  name = "${var.preffix}-${var.name}-${var.env}"
  tags = {
    Name = "${var.preffix}-${var.name}-${var.env}"
    Project = "flusshygiene"
  }
}
