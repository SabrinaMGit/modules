resource "aws_route53_record" "codedeploy" {
  zone_id = var.r53zone
  name    = "${var.externaldnshost}.${var.r53zone}"
  type    = "A"
  alias {
    name                   = aws_lb.ealb.dns_name
    zone_id                = aws_lb.ealb.zone_id
    evaluate_target_health = true
  }
}
