output "ec2_arn" {
  value       = aws_instance.monday_ec2.arn
  description = "arn of the ec2 created"
}

output "ec2_volume_size" {
  value       = aws_instance.monday_ec2.root_block_device[0].volume_size
  description = "volume size of ec2 block device"
}