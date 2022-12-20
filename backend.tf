terraform {
  backend "s3" {
    bucket = "tfe-1"
    key    = "project2/tfstatefile"
    region = "ap-northeast-1"
  }

}