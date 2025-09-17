variable "repository_name" {
  type        = string
  description = "Nome do repositório GitHub"
}

variable "description" {
  type        = string
  default     = ""
  description = "Descrição do repositório"
}

variable "visibility" {
  type        = string
  default     = "public"
  description = "Visibilidade do repositório"
}

variable "labels" {
  type        = list(string)
  default     = ["dev", "qa", "plan"]
  description = "Labels que serão criadas no repositório"
}
