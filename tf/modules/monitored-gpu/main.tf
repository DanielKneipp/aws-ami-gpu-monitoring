resource "aws_instance" "gpu" {
  ami                  = var.ami
  instance_type        = "g4dn.xlarge"
  iam_instance_profile = aws_iam_instance_profile.gpu.name

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    volume_size           = 20

    tags = {
      "Name" = "monitored-gpu"
    }
  }

  tags = {
    "Name" = "monitored-gpu"
  }
}

