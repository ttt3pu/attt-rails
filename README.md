# attt-rails

Backend for https://attt.hachiware.cat/

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

## Other commands (rspec, etc...)

See [Makefile](./Makefile)

## OpenAPI TypeScript packages

When pushed with edit `openapi/src/**` files, Github packages will publish uses CI.

https://github.com/ttt3pu/attt-rails/packages/1355068

### To use in another repository

Add config to `.npmrc`

```yml
@ttt3pu:registry=https://npm.pkg.github.com
```

Install with this command.

`npm i -D @ttt3pu/attt-rails`

## Scrap

https://zenn.dev/attt/scraps/1293067756e442
