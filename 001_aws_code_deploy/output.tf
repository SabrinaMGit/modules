output "public_dns" {
  value = aws_lb.ealb.dns_name
}

output "ubuntu_ami" {
  value = data.aws_ami.ubuntu
}