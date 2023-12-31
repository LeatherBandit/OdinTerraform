# Get latest Ubuntu Linux Focal Fossa 20.04 AMI
data "aws_ami" "ubuntu-linux-2004" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-*"]
  }
  
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Get latest Amazon Linux 2 AMI
data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]    
    
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

# Get latest CentOS 8 AMI
#data "aws_ami" "centos-8" {
#  most_recent = true
#  owners      = ["125523088429"]  
#  filter {
#      name   = "name"
#      values = ["CentOS 8*"]
#  }  
#  filter {
#      name   = "architecture"
#      values = ["x86_64"]
#  }  
#  filter {
#      name   = "root-device-type"
#      values = ["ebs"]
#  }
#}

#  Get latest RHEL 8.5 AMI
data "aws_ami" "rhel_8_5" {
  most_recent = true
  owners      = ["309956199498"] // Red Hat's Account ID  
  
  filter {
    name   = "name"
    values = ["RHEL-8.5*"]
  } 

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }    

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }  
  
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}