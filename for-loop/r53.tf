resource "aws_route53_record" "roboshop" {
  # count = 2
  for_each  = aws_instance.terraform  
  zone_id = "${var.zone_id}"
  name    = "${each.key}.${var.domain_name}" # mongodb.tirusatrapu.fun
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}