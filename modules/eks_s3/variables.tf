variable "tags" {
  type        = map
  description = "Tags to be added to AWS resources"
}

variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (Name tag)"
}