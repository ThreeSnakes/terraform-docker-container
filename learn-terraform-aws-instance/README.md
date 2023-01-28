# learn-terraform-aws-instance

[인프라 구축](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build)을 보면서 따라해보자.

## 시작 방법

``` bash
# aws-cli 설치가 되어 있어야 하며, aws configure를 통해 aws에 접속할 수 있어야 한다.
# 회사 계정을 안만들고 개인 계정을 만든뒤 프로필 설정을 하였다.

# 1. main.tf 파일을 작성한다.
# 1-1. 다음 내용은 따로 수정하였다.
#      provider에서 profile 추가. (aws configure를 통해 설정한 프로필 이름)
#      region 수정. (aws configure를 통해 설정한 region) 서울리전을 사용하도록..
#      ami 수정. 튜토리얼에 있는 ami는 서울리전에 없어서 다른 ami를 사용하였다.
# 2. 쉘 명령어를 통해 테라폼을 Init 한다.
  $ terraform init
# 3. 쉘 명령어를 통해 테라폼을 apply 한다.
  $ terraform apply
  # cli에 해당 설정을 적용하는게 맞는지 확인하는 메세지가 나오는데, yes를 입력한다.
  # 인스턴스가 띄우는데까지 시간이 조금 걸린다. 20초정도..?
  # 인스턴스가 띄워지는데.. 관련 metaData가 출력되는데 (known after apply) 의 경우 apply가 완료된 이후에 알 수 있다는 것이다ㅏ.
# 4. 인스턴스가 정상적으로 떠졌는지 확인한다.
  $ terraform show 
  # 위 명령어로 현재 테라폼 상태를 확인할 수 있다. 위에서 확인이 안된 metaData가 출력되는것을 볼수 있다.
  # AWS Console에서 확인한다.
# 5. ami를 변경해서 다시 적용해보자.
  # main.tf에서 ami를 변경한다. (ami-013218fccb68a90d4 -> ami-09eba584c30b7299f)
  # 다음 명령어로 변경을 승인한다.
  $ terraform apply
  # 변경점이 화면에 표시 되는데 수정한 부분에는 # forces replacement가 표시된다.
  # 또한 로그를 보면 기존 인스터스를 죽인후 새로운 인스턴스를 만들고 있는 것을 알 수 있다.
# 6. 인스턴스 ami가 변경됬음을 확인한다.
  $ terraform show
  # AWS Console에서 확인해보면 기존 인스턴스는 죽어 있고 새로운 ami를 적용한 인스턴스가 배포 된것을 확인할 수 있다.
# 7. 환경 종료
  $ terraform destroy
  # cli에 명령어를 입력하면 확인하는 메세지가 나오는데, yes를 입력한다.
  # 로그를 통해서 인스턴스가 죽는 것을 확인할 수 있다.
# 8. 테라폼 상태 확인
  $ terraform show
  # 아무것도 나오지 않는 것을 확인 할 수 있고 AWS 콘솔에서도 모든 인스턴스가 죽은것을 확인할 수 있다.
```

## 참고

- [AWS Profile 설정](https://novemberde.github.io/post/2018/06/20/AWS-config-switching/)
