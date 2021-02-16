# TSUNAGI-APP(制作中：就活のためまったり開発してます)
https://tsunagi-app.herokuapp.com/users/sign_in
## PC用レイアウト
#### トップ画(top/index.html)
<img width="722" alt="スクリーンショット 2021-02-17 1 10 00" src="https://user-images.githubusercontent.com/66266385/108089856-632dae00-70bd-11eb-82ce-24b42e3559bf.png">

#### マイページ(user/show.html)
<img width="718" alt="スクリーンショット 2021-02-17 1 10 25" src="https://user-images.githubusercontent.com/66266385/108089889-69238f00-70bd-11eb-912e-89a8e905ed61.png">

## スマホ用レイアウト
#### トップ画(top/index.html)
<img width="357" alt="スクリーンショット 2021-02-17 1 12 29" src="https://user-images.githubusercontent.com/66266385/108089944-76407e00-70bd-11eb-9dbb-80275b77a196.png">

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
