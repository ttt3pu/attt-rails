## 起動コマンド

`docker-compose up`

http://localhost:3000

## 新しいgemの追加

(1) 使用しているコンテナがあれば停止します。
`$ docker-compose down`
(2) gemをGemfileに追加し、インストールします。(新たに追加されたgemの更新のみ実行されます。)
`$ docker-compose run web bundle install`
(3) 再びコンテナを立ち上げます。
`$ docker-compose up`