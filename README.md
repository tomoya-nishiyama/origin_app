# アプリ名 ORIGIN

気に入った本を紹介し共有するサイトです。
どんな本か気に入ったポイントを記載し、その本に関するyoutubeの動画を載せる事もできます。
観覧しているユーザーは気になったらamazonからその本を購入する事ができます。
プログラミングを挑戦するきっかけになったのが趣味の読書のおかげだったので原点という意味で「ORIGIN」というアプリ名にしました。
読書で知識を得て、行動に移す事で予期せぬ出会いに繋がると思い作ったアプリです。

![573cda6f5694deb0436034ff8df92bca](https://user-images.githubusercontent.com/73161307/102706173-dcce3900-42d2-11eb-929b-d28790bf6358.jpg)

# URL

http://54.95.53.119/
ゲストログイン（閲覧用）から登録の記入をせずにログインできます。

# 使用技術

* Ruby  
* Ruby on Rails 6.0.0  
* MySQL 5.6.50  
* RSpec  
* AWS  
  * EC2

# 機能一覧

* ユーザー登録、ログイン機能(devise)  
* 投稿機能  
* いいね機能(Ajax)  
* 検索機能

# テスト

* RSpec
  新規登録機能、投稿機能の単体テストコード












# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| name            | string | null: false |
| email           | string | null: false |
| password        | string | null: false |

### Association

- has_many :originss
- has_many :likes

## origins テーブル

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| user             | references | null: false |
| book_title       |   string   | null: false |
| category_id      |  integer   | null: false |
| text             |    text    | null: false |
| youtube_url      |   string   | null: false |
| amazon           |   text     | null: false | 

### Association

- belongs_to :user
- has_many   :likes

## likes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| origin | references | null: false, foreign_key: true |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :origin
