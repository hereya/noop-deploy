terraform {

}

variable "hereyaProjectRootDir" {
  type = string
}

variable "hereyaProjectEnv" {
  type = any
  default = {}
}

resource "terraform_data" "log" {
  provisioner "local-exec" {
    command = templatefile("${path.module}/deploy.tpl", {
      projectDir : var.hereyaProjectRootDir
      projectEnv : var.hereyaProjectEnv
    })
  }
}