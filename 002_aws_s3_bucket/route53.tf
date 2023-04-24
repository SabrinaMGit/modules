/*resource "aws_acm_certificate" "cert" {
  # provider = aws.eu-central-1
  domain_name       = var.bucket_name
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}*/

/*resource "aws_route53_zone" "main" {
  name = var.bucket_name
}*/

/*resource "aws_route53_record" "cert_validation" {
  name = "www.${var.bucket_name}"
  type = "A"
  zone_id = aws_route53_zone.main.zone_id
  # records = ["www.${var.bucket_name}"]
  # records = [aws_eip.lb.public_ip]
  alias {
    name                   = aws_lb.ealb.dns_name
    zone_id                = aws_lb.ealb.zone_id
    evaluate_target_health = true
  }
}*/

/*
resource "aws_acm_certificate_validation" "cert" {
  # provider = aws.eu-central-1
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = ["${aws_route53_record.cert_validation.fqdn}"]
}*/
