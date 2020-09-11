provider "aws" {
  region  = "ap-south-1"
}
resource "aws_s3_bucket_object" "object1" {
  bucket  = "alianz657"
  key     = "arch/three_gossips/turret"
  content = "Delicate"
}
