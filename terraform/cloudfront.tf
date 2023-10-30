locals {
  s3_origin_id = "${local.app_name}-frontend-s3"
}

resource "aws_cloudfront_origin_access_control" "oac" {
  name                              = "capibytes-frontend-bucket-oac"
  description                       = "Recurso de permissao de acesso ao bucket pelo cloudfront"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "frontend_distribution" {
  origin {
    domain_name = aws_s3_bucket.frontend.bucket_regional_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.oac.id
    origin_id   = local.s3_origin_id
    origin_path = var.CLOUDFRONT_ORIGIN_PATH
  }

  enabled             = true
  is_ipv6_enabled     = true
  default_root_object = "index.html"

  aliases             = ["datalytics.devs2blu.dev.br", "www.datalytics.devs2blu.dev.br"]
  viewer_certificate {
    acm_certificate_arn      = aws_acm_certificate_validation.cert_validation.certificate_arn
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.2_2018"
  }

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = local.s3_origin_id

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 60
    max_ttl                = 300
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["BR", "AR", "US"]
    }
  }
}