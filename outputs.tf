# Outputs for our vpc module


output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "cidr" {
  value = aws_vpc.main.cidr_block
}

output "vpc_id" {
  value = aws-vpc.main.vpc_id
}


