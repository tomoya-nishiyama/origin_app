![a31f9c95e035448b1de9f6b97d5840dd](https://user-images.githubusercontent.com/73161307/110463528-60026c80-8115-11eb-84c6-c15d15810c6c.jpg)
# 概要

「読書が好きです。」  
ORIGINはお気に入りの本を動画付きで投稿、共有するサービスです。

# URL

http://origin-app.work/  
ゲストログイン（閲覧用）から登録の記入をせずにログインできます。

# 作成の背景

私は読書をする事で重い腰を上げ新たな挑戦、行動をとるきっかけになりました。  
本から得られる学びは有意義でとても身になると感じていますが、その反面  
「学びは得たいが読むのは面倒」「新しい本を何か読みたいけどハズレは嫌...で結局買わない」  
という人が多いと感じています。  
なのでお気に入り本の要約動画を貼ったり、その本を読んだ事で得た学びや自己エピソードなどを交え投稿する事で  
興味をいだきやすくし、気軽に新しい本と出会えたら良いなと考え作成しました。  

# 主な利用方法

![78ac844e5db1da096930eb9813c62ba2](https://user-images.githubusercontent.com/73161307/110496942-5ab71900-8139-11eb-9215-6febdbe5d5a5.jpg)

* 紹介したい本の投稿時にタイトル、カテゴリー、紹介文を入れURLを貼る事で動画を貼ったり、amazonで購入する事ができます。  

<img width="1236" alt="329cc0189cc6023191fea77de0f0d692" src="https://user-images.githubusercontent.com/73161307/110497344-b2ee1b00-8139-11eb-8574-283f4e5b32ce.png">






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







