# Spring Boot with Docker
## やりたいこと
- DockerでSpring BootのアプリケーションとDBを起動する
- DBのテーブルの永続化（未着手）
- ログの永続化

## ビルドと実行方法
- ログは`./logs`の配下に出力されるように設定

```
# JARのビルド
$ $ ./gradlew build

# アプリケーションの起動
# 初回
$ docker-compose up --build

# 2回目（バックグラウンドで起動）
$ docker-compose up -d

# 終了
$ docker-compose down

# 動作確認
$ curl http://127.0.0.1:8080/demo
```

## 参考
- [Docker で Spring Boot](https://spring.pleiades.io/guides/gs/spring-boot-docker/)

## 勉強途中メモ
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