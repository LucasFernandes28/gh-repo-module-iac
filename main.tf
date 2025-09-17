resource "github_repository" "this" {
  name        = var.repository_name
  description = var.description
  visibility  = "private"
  auto_init   = true
}

# Cria labels automaticamente
resource "github_issue_label" "labels" {
  for_each    = toset(var.labels)
  repository  = github_repository.this.name
  name        = each.value
  color       = "BFD4F2"
  description = "Label ${each.value}"
}

# Proteção da branch master
resource "github_branch_protection" "master" {
  repository_id  = github_repository.this.node_id
  pattern        = "master"

  required_pull_request_reviews {
    required_approving_review_count = 1
  }

  enforce_admins = true
}
