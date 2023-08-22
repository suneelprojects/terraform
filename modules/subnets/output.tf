
output "public_subnets" {
  description = "Outputs are basically for reading the content w.r.t main file"
  value       = aws_subnet.public-subnets.*.id
}

output "private_subnets" {
  description = "Outputs are basically for reading the content w.r.t main file"
  value       = aws_subnet.private-subnets.*.id
}

