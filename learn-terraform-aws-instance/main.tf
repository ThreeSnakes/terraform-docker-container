terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "dev.select995"  # default가 사내 계정이라 개인 계정을 이용하기 위해서 설정 추가.
  region  = "ap-northeast-2" # profile에 region이 설정되어 있어도 명시적으로 설정해줘야 한다. 안그러면 apply하래 region을 입력해줘야 한다.
}

resource "aws_instance" "app_server" {
  ami           = "ami-09eba584c30b7299f" # 튜토리얼에 있는 ami가 존재하지 않아서 AWS에 있는 프리티어용 ami로 변경.
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
