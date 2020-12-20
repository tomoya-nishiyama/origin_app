# アプリ名 ORIGIN

気に入った本を紹介し共有するサイトです。
どんな本か気に入ったポイントを記載し、その本に関するyoutubeの動画を載せる事もできます。
観覧しているユーザーは気になったらamazonからその本を購入する事ができます。

![9ed29bc09a28f7232ec30e3a956de64d](https://user-images.githubusercontent.com/73161307/102704615-18f89e00-42c1-11eb-90fb-0ac3faaf56bf.jpg)

# URL

ゲストログイン（閲覧用）から登録の記入をせずにログインできます。

https://origin-app-2222.herokuapp.com/

# 使用技術

・Ruby 
・Ruby on Rails 6.0.0
・MySQL 5.6.50
・RSpec

# 機能一覧

・ユーザー登録、ログイン機能(devise)
・投稿機能
・いいね機能(Ajax)
・検索機能

# テスト

・RSpec
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
