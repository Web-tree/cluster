variable "github-token" {
  type = string
}
variable "github-organization" {
  type = string
  default = "web-tree"
}
variable "github-master-branch-protection" {
  description = "List of repositories policies applying for master branch"
  type = list(string)
  default = [
    "agreement",
    "angularx-social-login",
    "auth",
    "auth-web",
    "cluster",
    "imprint",
    "landing",
    "mydata",
    "mydata-web",
    "mystuff",
    "trust",
    "unions"
#    "shared-libs"
  ]
}

variable "github-ghp-branch-protection" {
  description = "List of repositories policies applying for github pages branch"
  type = list(string)
  default = [
    "auth-web",
    "mydata-web",
  ]
}
