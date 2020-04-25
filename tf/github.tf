provider "github" {
  token        = var.github-token
  organization = var.github-organization
}

resource "github_branch_protection" "master_branch" {
  count = length(var.github-master-branch-protection)
  repository     = var.github-master-branch-protection[count.index]
  branch         = "master"
  required_status_checks {
    strict   = true
    contexts = [
      "validate"
    ]
  }
  restrictions {
    teams = [
      "tools",
      "owners"
    ]
  }
}

resource "github_branch_protection" "ghp_branch" {
  count = length(var.github-ghp-branch-protection)
  repository     = var.github-ghp-branch-protection[count.index]
  branch         = "gh-pages"
  required_status_checks {
    strict   = true
  }
  restrictions {
    teams = [
      "tools",
    ]
  }
}
