# Outputs for our vpc module


output "public_subnet_id" {
  value = aws_subnet.public[0].id 
}

output "cidr" {
  value = aws_vpc.environment.cidr_block
}


output "vpc_id" {
   value = aws_vpc.environment.id
 }

 output "vpc_cidr" {
   value = aws_vpc.environment.cidr_block
 }

 output "bastion_host_dns" {
   value = aws_instance.bastion.public_dns
 }

 output "bastion_host_ip" {
   value = aws_instance.bastion.public_ip
 }

 output "public_subnet_ids" {
   value = aws_subnet.public[*].id
 }

 output "private_subnet_ids" {
   value = aws_subnet.private[*].id
 }

 output "public_route_table_id" {
   value = aws_route_table.public.id
 }

 output "private_route_table_id" {
   value = aws_route_table.private[*].id
 }

 output "default_security_group_id" {
   value = aws_vpc.environment.default_security_group_id
 }

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = bastion.public_dns
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = bastion.public_ip
}

