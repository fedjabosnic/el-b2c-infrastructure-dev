resource "null_resource" "fakery" {
    triggers = {
      environment = var.environment
      region      = var.region
      salt        = base64sha512(file("${path.module}/../.secrets/password"))
    }

    provisioner "local-exec" {
      command = "echo \"Running on ${var.environment}/${var.region}\""
    }
}

resource "null_resource" "figments" {
    triggers = {
      environment = var.environment
      region      = var.region
    }

    provisioner "local-exec" {
      command = "echo \"Running on ${var.environment}/${var.region}\""
    }
}

resource "null_resource" "nudge" {
    triggers = {
      environment = var.environment
      region      = var.region
    }

    provisioner "local-exec" {
      command = "echo \"Nudging on ${var.environment}/${var.region}\""
    }
}