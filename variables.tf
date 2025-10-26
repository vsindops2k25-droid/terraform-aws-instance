variable "ami_id" {
  description = "The ID of the AMI to use for creating an instance."
  type        = string
}

# variable "instance_type" {
#   description = "The type of instance to create."
#   type        = string
  
# }

variable "instance_type" {
  description = "The type of instance to create."
  type        = string
    validation {
  condition  = contains(["t3.small", "t3.micro", "t3.medium"], var.instance_type) 
  error_message = "Invalid instance type. Allowed values are t3.small, t3.micro, t3.medium."
}
}

variable "sg_ids" {
  description = "List of security group IDs to associate with the instance."
  type        = list
  
}

# Optional variable for tags
variable "tags" {
  description = "The tags of the instances"
  type        = map
    default     = {}

}