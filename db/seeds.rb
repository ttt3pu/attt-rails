# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# coding: utf-8

BlogArticle.create(
  slug: 'tsukurimashita',
  createdAt: '2021-05-04T04:30:44.335Z',
  updatedAt: '2021-06-30T05:09:27.336Z',
  publishedAt: '2021-05-04T04:30:44.335Z',
  title: 'サイトを作りました。',
  content: 'ポートフォリオが欲しいと思いつつもずっとROM専していたのですが、ようやく作ってみました。  \n（学生の頃に作ったことがあったのですが、当時Gitとかの使い方が何もわからなかったのと、謎のフリードメインで作っていたこととか前のパソコンが死んだこともあり自然消滅してしまいました。。🗿）  \n\n技術系の記事はZennに書いたほうが見てもらえそうなので向こうで書いて、こっちのブログにはどうでも良いようなこととか日常的なことを載せていこうかなーと考えています。  \n（あんまり更新しなそう）  \n\nとりあえず今後やってみたいこととして、[Steam Web API](https://partner.steamgames.com/doc/webapi_overview?l=japanese) に興味があるので、これと連携させて趣味のトロコンの記録とかを載せてみたいと思ってます。',
)

BlogArticle.create(
  slug: '202203_design_renewal',
  createdAt: '2022-03-26T06:12:25.151Z',
  updatedAt: '2022-03-26T06:12:25.151Z',
  publishedAt: '2022-03-26T06:12:25.151Z',
  title: 'デザインを一新してみました',
  content: '転職活動も終わってほぼ見られることの無くなったこのポートフォリオですが、久々に見返したらダサい気がしてきてデザインを一新してみました。\n最近仕事ではtailwindを使っていたので、久々にCSSを手書きしたらやっぱり楽しかったです。ただやっぱりtailwindに慣れたせいで不便さも感じるようになってきてしまった。\n趣味で使う程度ならハイブリットに使ってどっちの良いところも使うぐらいがちょうど良いのかなぁと思い始めてきました。\n\n最近はRailsを1から勉強しています。フロントエンド以外ほぼ全く触ってこなかったド素人なのでかなり苦戦中・・・。\nこのブログはmicroCMSのAPIで作られてるんですが、いずれRailsで自作ヘッドレスCMSとして移行しようかなと考えています。\n↓このスクラップで進行中。Zenn便利すぎる・・・。\nhttps://zenn.dev/attt/scraps/1293067756e442\n\nついでに今更ながら1日1コミットを頑張り始めてみました。\nまだ始めて2週間しか経ってないんですが、今のところは結構楽しいです。\n草を生やすのはゲームの収集物コンプと同じ感じの楽しさがあることに気づいたのでなんとか続けれそうな気がします。\n新しい職場になってから周りについていけてない感じがしているので頑張らなければ・・・。',
)
