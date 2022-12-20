resource "aws_instance" "web-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  root_block_device {
    volume_type = "gp3"
  }


  tags = {

    Name = var.env
  }

}

resource "aws_ebs_volume" "ebsvolume" {
  availability_zone = var.az
  size = 20
  encrypted = false
  type = "gp3"
  tags = {
    Name = var.env
  }

}

resource "aws_volume_attachment" "mountvolumetoec2" {
  device_name = "/dev/sdf"
  instance_id = "i-0d22adbaef9254512"
  volume_id = "vol-0813f9b722edb792f"
}
