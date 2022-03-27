# attt-rails

## Launch Command

`make up`

http://localhost:3000

## Setup

```shell
make build
# Install gem
make bundle
# Reset DB and insert seed
make reset
```

*If windows, install something tool so that you can use the make command.

ex)

- Make for Windows: http://gnuwin32.sourceforge.net/packages/make.htm
- scoop: `scoop install make`

## Add new gem

```shell
# (1) 使用しているコンテナがあれば停止します。
make down
# (2) gemをGemfileに追加し、インストールします。(新たに追加されたgemの更新のみ実行されます。)
make bundle
# (3) 再びコンテナを立ち上げます。
make up
```

## Scrap

https://zenn.dev/attt/scraps/1293067756e442
