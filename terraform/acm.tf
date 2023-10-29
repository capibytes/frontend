resource "aws_acm_certificate" "cert" {
  domain_name               = local.dominio
  subject_alternative_names = ["www.${local.dominio}"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate_validation" "cert_validation" {
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [for record in aws_route53_record.cert_validation : record.fqdn]
}