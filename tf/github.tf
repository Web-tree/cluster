provider "github" {
  token        = var.github-token
  organization = var.github-organization
}

resource "github_branch_protection" "master_branch" {
  count = length(var.github-repositories)
  repository     = var.github-repositories[count.index]
  branch         = "master"
  required_status_checks {
    strict   = true
  }
  restrictions {
    teams = ["owners_team"]
  }
}
