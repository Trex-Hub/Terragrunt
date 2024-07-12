variable "region" {
  description = "The region in which the repository should be created"
  type        = string
  default     = "asia-south1"
}

variable "trigger_name" {
  type = string
  description = "Name/Id of the Repository"
}
