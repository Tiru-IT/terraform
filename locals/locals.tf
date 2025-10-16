locals {
  instance_type = "t3.micro"
  common_name = "${var.project}-${var.environmemt}"
  ami_id = data.aws_ami.joindevops.id
  ec2_tags = merge(
    var.common_tags,
    {
      name = "${local.common_name}-local-demo"
    }
  )
  

}