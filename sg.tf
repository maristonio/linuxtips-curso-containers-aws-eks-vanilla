resource "aws_security_group_rule" "nodeports" {
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow all traffic from worker nodes to worker nodes"
  from_port         = 30000
  to_port           = 32768
  protocol          = "tcp"
  security_group_id = aws_eks_cluster.main.vpc_config[0].cluster_security_group_id
  type              = "ingress"

}

resource "aws_security_group_rule" "coredns_tcp" {
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow all traffic from worker nodes to worker nodes"
  from_port         = 53
  to_port           = 53
  protocol          = "tcp"
  security_group_id = aws_eks_cluster.main.vpc_config[0].cluster_security_group_id
  type              = "ingress"

}

resource "aws_security_group_rule" "coredns_udp" {
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow all traffic from worker nodes to worker nodes"
  from_port         = 53
  to_port           = 53
  protocol          = "udp"
  security_group_id = aws_eks_cluster.main.vpc_config[0].cluster_security_group_id
  type              = "ingress"

}