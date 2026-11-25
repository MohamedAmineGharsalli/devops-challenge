output "instance_public_ip" {
  description = "Public IP address of the EC2 instance."
  value       = aws_instance.app.public_ip
}

output "app_port" {
  description = "Port used by the application."
  value       = var.app_port
}

output "app_url" {
  description = "Application URL."
  value       = "http://${aws_instance.app.public_ip}:${var.app_port}"
}
