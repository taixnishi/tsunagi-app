# TSUNAGI-APP(制作中：就活のためまったり開発してます)
https://tsunagi-app.herokuapp.com/users/sign_in
## PC用レイアウト
#### トップ画(top/index.html)
<img width="722" alt="スクリーンショット 2021-02-17 1 10 00" src="https://user-images.githubusercontent.com/66266385/108089856-632dae00-70bd-11eb-82ce-24b42e3559bf.png">

#### お店一覧(shops/index.html)
<img width="717" alt="スクリーンショット 2021-02-17 1 10 13" src="https://user-images.githubusercontent.com/66266385/108089879-67f26200-70bd-11eb-911a-912912b8e3b9.png">

#### 詳細画(shop/show.html)
<img width="722" alt="スクリーンショット 2021-02-17 1 11 02" src="https://user-images.githubusercontent.com/66266385/108089894-6a54bc00-70bd-11eb-980c-fab756f04ae7.png">

#### マイページ(user/show.html)
<img width="718" alt="スクリーンショット 2021-02-17 1 10 25" src="https://user-images.githubusercontent.com/66266385/108089889-69238f00-70bd-11eb-912e-89a8e905ed61.png">

## スマホ用レイアウト
#### トップ画(top/index.html)
<img width="357" alt="スクリーンショット 2021-02-17 1 12 29" src="https://user-images.githubusercontent.com/66266385/108089944-76407e00-70bd-11eb-9dbb-80275b77a196.png">

#### お店一覧(shops/index.html)
<img width="364" alt="スクリーンショット 2021-02-17 1 12 42" src="https://user-images.githubusercontent.com/66266385/108089955-7771ab00-70bd-11eb-9f3c-8352f0aa2200.png">

#### 詳細画(shop/show.html)
<img width="354" alt="スクリーンショット 2021-02-17 1 12 08" src="https://user-images.githubusercontent.com/66266385/108089927-73458d80-70bd-11eb-9eb4-5a593e566f94.png">

#### マイページ(user/show.html)
<img width="356" alt="スクリーンショット 2021-02-17 1 12 19" src="https://user-images.githubusercontent.com/66266385/108089936-7476ba80-70bd-11eb-99af-5eecbba93880.png">



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
