variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (Name tag)"

}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all AWS resources"
}