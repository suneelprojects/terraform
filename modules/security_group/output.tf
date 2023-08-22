output "security_groups" {
  description = "Reading the value from the main file"
  value       = aws_security_group.vpc_sg.id
}

