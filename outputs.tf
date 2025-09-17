output "repository_name" {
  description = "Nome do repositório GitHub criado"
  value       = github_repository.this.name
}

output "repository_full_name" {
  description = "Nome completo do repositório (org/repo)"
  value       = github_repository.this.full_name
}

output "repository_html_url" {
  description = "URL HTTPS do repositório"
  value       = github_repository.this.html_url
}

output "repository_ssh_clone_url" {
  description = "URL SSH para clonar o repositório"
  value       = github_repository.this.ssh_clone_url
}

output "repository_http_clone_url" {
  description = "URL HTTPS para clonar o repositório"
  value       = github_repository.this.http_clone_url
}
