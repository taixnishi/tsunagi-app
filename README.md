# TSUNAGI-APP(制作中：就活のためまったり開発してます)
https://tsunagi-app.herokuapp.com/users/sign_in
## ワイヤーフレーム(イメージ画像）
#### トップ画(index.html)
<img width="672" alt="スクリーンショット 2020-12-29 15 52 59" src="https://user-images.githubusercontent.com/66266385/103264479-2531d900-49ee-11eb-9c2a-4f345f961d9a.png">

#### 詳細画(shop/show.html)
<img width="1082" alt="スクリーンショット 2020-12-29 15 53 39" src="https://user-images.githubusercontent.com/66266385/103264487-29f68d00-49ee-11eb-8415-f9e8d567a582.png">

#### マイページ(user/show.html)
<img width="1081" alt="スクリーンショット 2020-12-29 15 53 31" src="https://user-images.githubusercontent.com/66266385/103264484-282cc980-49ee-11eb-9cec-0894fe97e160.png">
<img width="1081" alt="スクリーンショット 2020-12-29 15 53 19" src="https://user-images.githubusercontent.com/66266385/103264481-26fb9c80-49ee-11eb-8f34-6a6930da612d.png">


## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる Gemsと jqueryをインストールします。

```
$ bundle install --without production
```

```
$ yarn add jquery
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事に通ったら、Railsサーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```
