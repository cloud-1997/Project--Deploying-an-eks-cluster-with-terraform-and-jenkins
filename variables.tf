# VPC CIDR Block
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Subnet CIDR Block
variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Availability Zone
variable "availability_zone" {
  description = "The availability zone where the subnet will be created"
  type        = string
  default     = "us-east-1a" # Adjust this to your desired AZ
}

# Map Public IP on Launch
variable "map_public_ip_on_launch" {
  description = "Should be true if instances launched into the subnet should be assigned a public IP address"
  type        = bool
  default     = true
}

# Internet Gateway Name
variable "igw_name" {
  description = "The name of the Internet Gateway"
  type        = string
  default     = "my-igw"
}

# Route Table Name
variable "route_table_name" {
  description = "The name of the Route Table"
  type        = string
  default     = "my-route-table"
}

# Security Group Name
variable "sg_name" {
  description = "The name of the Security Group"
  type        = string
  default     = "jenkins_sg20"
}

# Security Group Description
variable "sg_description" {
  description = "The description of the Security Group"
  type        = string
  default     = "Allow inbound ports 22, 443, 8080"
}

# AMI ID
variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-04a81a99f5ec58529" # Replace with your desired AMI
}

# Instance Type
variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.medium"
}

# Key Pair Name
variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "terraformkp"
}

# EC2 Instance Name Tag
variable "instance_name_tag" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "jenkins-server-demo"
}
