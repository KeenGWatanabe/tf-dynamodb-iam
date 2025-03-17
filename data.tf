#fetching my_ip code
data "http" "my_public_ip" {
  url = "https://ifconfig.me/ip" # or use any other service that returns your public IP
}

locals {
  my_ip = "${chomp(data.http.my_public_ip.body)}/32" #${data.http.my_public_ip}/32
}
#Output my_ip
output "my_ip" {
  value = local.my_ip
  
}