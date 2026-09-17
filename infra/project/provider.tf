terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket            = "csjin-test-bucket" # 테라폼 상태파일을 저장할 버킷 이름
    key               = "TerraformState/Ex/ex7-terraform-cicd/terraform.tfstate" # 버킷에서 테라폼 상태파일 저장 경로
    region            = "ap-south-1"
    dynamodb_table    = "csjin-study-terraform-lock-table"  # 락온 상태를 저장할 DynamoDB Table 이름
    encrypt           = true  # 파일 암호화
  }
}

# AWS 프로바이더 설정 블록
provider "aws" {
  # 인프라가 생성될 물리적 위치(리전)를 지정합니다.
  region = "ap-south-1" 
}