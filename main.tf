terraform {

}

variable "hereyaProjectRootDir" {
  type = string
}

variable "hereyaProjectEnv" {
  type = any
  default = {}
}

output "hereyaProjectRootDir" {
  value = var.hereyaProjectRootDir
}

output "hereyaProjectEnv" {
  value = var.hereyaProjectEnv
}