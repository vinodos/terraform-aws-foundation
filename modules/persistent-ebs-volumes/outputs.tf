output "iam_volume_policy_arns" {
  value       = aws_iam_policy.ebs-volume-policy.*.arn
  description = "IAM policy ARN, which can further be used to attach to a role policy"
}

output "volume_ids" {
  value       = aws_ebs_volume.volumes.*.id
  description = "IDs of EBS volumes"
}

output "volume_mount_snippets" {
  value       = data.template_file.volume_mount_snippets.*.rendered
  description = "Bash script snippets, which can be used to mount created EBS volumes"
}

