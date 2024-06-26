# yewduxrs

WASM with yew using yewdux for state management

## What is Yew?

- [Yew.rs frameowrk](https://yew.rs/)
- Yew is a modern Rust framework for creating multi-threaded front-end web apps using WebAssembly and SPAs.
- Today already is possible creates Server Side Rendering web apps.

- It component-based.
- It achieves great performance.
- It supports JavaScript interoperability, allowing developers leverage NPM packages and integrate with existing JavaScript applications.

## Running

- make trunk-init
- trunks serve
- trunks build --release (build to deploy)
- Read de Makefile (docker)

## Lint

- execute `make lint` before commit/push

## Using the terminal (nushell)

- [Quick Tour](https://www.nushell.sh/book/quick_tour.html)

```shell
# Eg.:
watch . --glob=**/*.rs {|| cargo test }
$env | table -e
$env.FOO = 'BAR'
$env.FOO
load-env { "BOB": "FOO", "JAY": "BAR" }
ls | where type == file | sort-by modified desc | select name
http get http://localhost:8080
http get http://localhost:8080 | query web --query 'header' | flatten
history | where command =~ cargo | get command
history | last 5
random chars --length 20
random uuid
'hello' | str length
sys
sys cpu
sys cpu | explore
```

## Installing extensions

- Add to devcontainer.json

## Change Theme

- CTRL + SHIFT + P (Preferences: change between Light/Dark themes)

## Guide to deploy (manually)

```shell
$ tar -cvf ./deploy.tar --exclude='*.map' ./captain-definition ./static/dist/*
output: ./deploy.tar
```

```shell
$ caprover deploy -t ./deploy.tar
output: success
```

- [Generate locally bundles](https://yew.rs/docs/more/deployment)
- [Captain Definition File Deploy](https://caprover.com/docs/captain-definition-file.html#:~:text=One%20of%20the%20key%20components,node%2F8.7.0%22%20%7D)
- [Caprover best practice](https://caprover.com/docs/best-practices.html)
- [Best practice manually deploy](https://caprover.com/docs/recipe-deploy-create-react-app.html)

## Main dependencies

- Trunk [Crates trunk](https://crates.io/crates/trunk)
- wasm-bindgen-cli [Crates wasm-bindgen-cli](https://crates.io/crates/wasm-bindgen-cli)
- Yewdux [State management](https://intendednull.github.io/yewdux/setup.html)
