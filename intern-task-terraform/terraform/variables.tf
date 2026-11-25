variable "aws_region" {
  description = "AWS region for the infrastructure."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI ID for the EC2 instance."
  type        = string
  default     = "ami-0c7217cdde317cfec"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed to connect through SSH. Provide your public IP with /32."
  type        = string

  validation {
    condition     = can(cidrnetmask(var.ssh_allowed_cidr))
    error_message = "ssh_allowed_cidr must be a valid IPv4 CIDR block."
  }
}

variable "app_port" {
  description = "Port used by the intern-task-app container."
  type        = number
  default     = 8080
}

variable "project_name" {
  description = "Name used for resource tags."
  type        = string
  default     = "intern-task-terraform"
}