provider "aws" {
  region = var.region
}

resource "random_string" "random" {
  length = 8
  special = false
  upper = false
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDzBN74p3jEDTcupqIeD/MFZRAbPnELmSnJGbqbpknpKXpiCrnqqOdqnR+snoCDnhHzRV84Xk+BNvbhLRgxR7Lz2xCTeyzYbntJgupClDq0fPBUBaWTyZep2wEfPOx9Nj3z7fY0WVhmYgF264upIskIZ2YF0ewwhhGpwirFRe0PCRr0tXFY/qQ50xBh0NCtK0Kg2txph6cjZ+t6r0+42GA6eQxfSL/TP/j3PTXlygnLFQ/8jD9SaVAKdEeuB45WVEUa+V8vGc4GOqehdgnaivS5XhxDjL+aK3TeBSiECg5a+Qgeq+QKReQbauZLTDmRd/poVXdcNpNZsVeUWYSP/ntmAEcMM74rUKYUCE/NT1n+SHSgCG58thRqYFbHTJGdigLcocf57uCNoWAjzYvo8Xrhl7s3ACFtpggC0DMlkpWMH2IOiZca+7TXa2i+fvNoRJyPSujuND5wfvN6zxu6VKvHu0v+QIA6RWBdAj/bDUjxvq/uKNizWCru4G2RpTwuXuE="
}