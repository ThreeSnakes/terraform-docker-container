# 테라폼 튜토리얼

[튜토리얼](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)을 보면서 따라해보자.

## 시작 방법

``` bash
# docker가 설치되어 있어야 한다.

# 1. main.tf 파일을 작성한다.
# 2. 쉘 명령어를 통해 테라폼을 Init 한다.
  $ terraform init
# 3. 쉘 명령어를 통해 테라폼을 apply 한다.
  $ terraform apply
  # cli에 해당 설정을 적용하는게 맞는지 확인하는 메세지가 나오는데, yes를 입력한다.
# 4. 해당 인프라가 잘 동작하는지 확인한다.
  docker ps
  # docker로 nginx가 잘 동작하는지 확인한다. 또는 localhost:8000으로 접속해서 확인한다. (nginx가 동작하는지 확인)
#.5 쉘 명령어를 통해 테라폼을 destroy 한다.
  $ terraform destroy
  # cli에 해당 설정을 적용하는게 맞는지 확인하는 메세지가 나오는데, yes를 입력한다.
```
