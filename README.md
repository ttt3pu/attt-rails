# attt-rails

## Launch Command

`docker-compose up`

http://localhost:3000

## Setup

```shell
# Install gem
docker-compose run web bundle install
# Reset DB
docker-compose run web rails db:migrate:reset
# Insert data to DB
docker-compose run web rails db:seed
```

## Add new gem

```shell
# (1) 使用しているコンテナがあれば停止します。
docker-compose down
# (2) gemをGemfileに追加し、インストールします。(新たに追加されたgemの更新のみ実行されます。)
docker-compose run web bundle install
# (3) 再びコンテナを立ち上げます。
docker-compose up
```

## Scrap

https://zenn.dev/attt/scraps/1293067756e442
