## Terraform による AWS 環境構築

<br />

### 目的

・個人開発用のインフラ構成を作成し再利用する<br />
・IaC によりインフラを管理する<br />
・非機能要件について理解を深める<br />

<br />

### 使用技術

・Terraform 1.4.2

<br />

### 構成図

[![Image from Gyazo](https://i.gyazo.com/b177e4af0f29480b90f94d0a64bb7b42.png)](https://gyazo.com/b177e4af0f29480b90f94d0a64bb7b42)

・HTTPS 化によるセキュリティ向上<br />
・マルチ AZ 構成による可用性の向上<br />
・ALB による負荷分散<br />
・Auto Scaling による対障害性の向上<br />
