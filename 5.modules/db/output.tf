/* File : 5.Modules/db/output.tf */
output "privateip" {
    value = aws_instance.myec2db.private_ip
}