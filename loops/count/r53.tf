resource "aws_route53_record" "www" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
#   records = [aws_instance.ec2_instance[count.index].private_ip]
  records = var.instances[count.index] == "frontend" ? [aws_instance.ec2_instance[count.index].public_ip] : [aws_instance.ec2_instance[count.index].private_ip]
}