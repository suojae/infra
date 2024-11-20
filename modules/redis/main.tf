resource "aws_elasticache_subnet_group" "this" {
  name       = "${var.cluster_id}-subnet-group"
  subnet_ids = var.subnets

  tags = {
    Name = "${var.cluster_id}-subnet-group"
  }
}

resource "aws_security_group" "this" {
  name        = "${var.cluster_id}-sg"
  description = "Security group for Redis"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = var.port
    to_port         = var.port
    protocol        = "tcp"
    security_groups = var.allowed_security_groups
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_elasticache_cluster" "this" {
  cluster_id        = var.cluster_id
  engine            = "redis"
  node_type         = var.node_type
  num_cache_nodes   = 1
  port              = var.port
  subnet_group_name = aws_elasticache_subnet_group.this.name
  security_group_ids = [aws_security_group.this.id]

  tags = {
    Name = var.cluster_id
  }
}
