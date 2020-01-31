variable "github-token" {
  type = string
}
variable "github-organization" {
  type = string
  default = "web-tree"
}
variable "github-repositories" {
  description = "List of repositories policies applying"
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
  ]
}
