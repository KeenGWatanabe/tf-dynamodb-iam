#Creating the Key Pair
We will be creating a new key pair in our terraform directory. Run the following command:

# Windows, use Git Bash or WSL only unless install openssl:
`ssh-keygen -t rsa -b 4096 -m pem -f roger_kp; openssl rsa -in roger_kp -outform pem; chmod 400 roger_kp`


# Debian:
`ssh-keygen -t rsa -b 4096 -m pem -f roger_kp.pem && chmod 400 roger_kp.pem`


#How to manage DynamoDB tables in terraform?
https://spacelift.io/blog/terraform-dynamodb


DynamoDB Access: DynamoDB is a fully managed NoSQL database service, and it is accessed via HTTPS (port 443) or through AWS SDKs. EC2 instances do not need a specific ingress rule in their security group to access DynamoDB. Instead, they need egress rules to allow outbound traffic to DynamoDB.

Security Group for DynamoDB: DynamoDB does not use security groups. Instead, access to DynamoDB is controlled via IAM policies and VPC endpoints (if accessing DynamoDB from a VPC). You don't need a separate security group for DynamoDB.

EC2 Security Group: The EC2 security group should allow outbound traffic to DynamoDB (port 443) if the EC2 instance needs to communicate with DynamoDB.