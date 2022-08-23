resource "aws_security_group" "node_group_one" {
  name_prefix = "node_group_one"
  vpc_id      = module.vpc.vpc_id

  // allow access to k8s nodeport services from anywhere
  ingress {
    from_port = 30000
    to_port   = 32768
    protocol  = "tcp"

    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}
