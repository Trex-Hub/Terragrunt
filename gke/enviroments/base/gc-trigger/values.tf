variable "trigger_name" {
    type = string
    description = "Name/Id of the Repository"
}

variable "region" {
    description = "The region in which the repository should be created"
    type        = string
    default     = "asia-south1"
}

variable "project_id" {
    description = "The project id"
    type        = string
}

variable "secret_key" {
    description = "The secret key"
    type        = string
    default = "mavonic@admin"
}

variable "github_owner" {
    description = "The owner of the github repository"
    type        = string
    default = "mavonicsystems"
}

variable "github_repo" {
    description = "The name of the github repository"
    type        = string
}

variable "service_account" {
    description = "The service account"
    type        = string
}