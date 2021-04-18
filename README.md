# Spring Boot with Docker
## やりたいこと
- DockerでSpring Bootのアプリケーションを起動する
- DBのテーブルの永続化（未着手）
- ログの永続化（未着手）

## ビルドと実行方法
### jarをビルドしてdockerでアプリケーションを起動する方法

jarのビルドとアプリケーションの実行は下記

```
# jarのビルド
$ ./gradlew build
# イメージのビルド
$ docker build --build-arg JAR_FILE=build/libs/\*.jar -t springio/gs-spring-boot-docker .
# イメージの実行
$ docker run -p 8080:8080 springio/gs-spring-boot-docker
```

下記のコマンドを実行することで、起動を確認する

```
$ curl http://localhost:8080/demo
```

### Dockerイメージの作成と起動
下記のコマンドでDockerイメージの作成と起動をする

```
$ ./gradlew bootBuildImage --imageName=springio/gs-spring-boot-docker-02
$ docker run -p 8080:8080 springio/gs-spring-boot-docker-02
```

## 参考
- [Docker で Spring Boot](https://spring.pleiades.io/guides/gs/spring-boot-docker/)