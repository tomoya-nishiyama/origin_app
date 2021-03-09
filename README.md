![a31f9c95e035448b1de9f6b97d5840dd](https://user-images.githubusercontent.com/73161307/110463528-60026c80-8115-11eb-84c6-c15d15810c6c.jpg)
# 概要

「本が好きです。」  
ORIGINはお気に入りの本を動画付きで投稿、共有するサービスです。

# URL

http://origin-app.work/  
ゲストログイン（閲覧用）から登録の記入をせずにログインできます。

# 作成の背景







# 使用技術

* Ruby 2.6.5  
* Ruby on Rails 6.0.0  
* MySQL 5.6.50  
* RSpec  
* AWS  
  * VPC  
  * EC2  
  * RDB(MariaDB)  
  * ELB(ALB)  
  * Route53  
* NGINX  
* Capistrano


# 機能一覧

* ユーザー登録、ログイン機能(devise)  
* 投稿機能  
* いいね機能(Ajax)  
* 検索機能

# テスト

* RSpec  
  * 新規登録機能、投稿機能(単体テストコード)

# インフラ構成図

 ![png](https://user-images.githubusercontent.com/73161307/110421743-6ecf2c00-80e1-11eb-9da1-7bf92b852ae7.png)







