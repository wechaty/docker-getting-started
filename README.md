# DOCKER-WECHATY-GETTING-STARTED

[![Powered by Wechaty](https://img.shields.io/badge/Powered%20By-Wechaty-blue.svg)](https://github.com/chatie/wechaty)
[![Docker Pulls](https://img.shields.io/docker/pulls/wechaty/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/wechaty/wechaty/)
[![Docker Stars](https://img.shields.io/docker/stars/wechaty/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/wechaty/wechaty/)
[![Docker CI](https://github.com/wechaty/docker-wechaty-getting-started/actions/workflows/docker.yml/badge.svg)](https://github.com/wechaty/docker-wechaty-getting-started/actions/workflows/docker.yml)

[![dockeri.co](http://dockeri.co/image/wechaty/wechaty)](https://hub.docker.com/r/wechaty/wechaty/)

Getting Started Template for Docker Users

## FEATURES

1. Wechaty is fully dockerized. So it will be very easy to be used as a MicroService.
1. Clone this repository, then you will be able to use Docker to run Wechaty with ZERO configuration.

## REQUIREMENTS

1. Docker
1. Global Internet Connection

## USAGE

### Run Bot Examples

#### 1. Run TypeScript Example

Source code at `src/typescript.ts`

```shell
bin/docker-run-typescript.sh
```

#### 2. Run ES Module Javascript Example

Source code at `src/javascript-esm.js`

```shell
bin/docker-run-javascript-esm.sh
```

#### ~~3 Run CommonJS Javascript Example~~

~~Source code at `src/javascript-vanilla.js`~~

> CommonJS will not be supported anymore because we have switched to pure ESM from Wechaty v1.0.

### 2. Set Environment Variables

The above scripts(`bin/docker-run-*.sh`) will pass all environment variables that start with `WECHATY_` from current shell to the Docker container.

All you need is just to set it under the shell before you run the `bin/docker-run-*.sh`.

```shell
export WECHATY_LOG=verbose
```

## DOCKER

### Install Docker

Quick & easy install Docker via:

```shell
curl -sSL https://get.docker.com | sh
```

Or

```shell
wget -qO- https://get.docker.com/ | sh
```

Get to know more about Docker at: <https://www.docker.com/>

## TEST

BATS: [HOW TO USE BATS TO TEST YOUR COMMAND LINE TOOLS](https://www.engineyard.com/blog/bats-test-command-line-tools)

## SEE ALSO

1. Wechaty Getting Started: <https://github.com/wechaty/wechaty-getting-started>
2. Heroku Wechaty Getting Started: <https://github.com/wechaty/heroku-wechaty-getting-started>

## HISTORY

### main 1.0 (Nov 4, 2021)

1. Update example code to match Wechaty v1.x API
1. Enable GitHub Actions (and remove Travis CI)

### v0.1 (Aug 14, 2018)

Init docker support.

## AUTHOR

[Huan LI](http://linkedin.com/in/zixia) \<zixia@zixia.net\>

<a href="https://stackexchange.com/users/265499">
  <img src="https://stackexchange.com/users/flair/265499.png" width="208" height="58" alt="profile for zixia on Stack Exchange, a network of free, community-driven Q&amp;A sites" title="profile for zixia on Stack Exchange, a network of free, community-driven Q&amp;A sites">
</a>

## COPYRIGHT & LICENSE

- Code & Docs © 2018-now Huan LI \<zixia@zixia.net\>
- Code released under the Apache-2.0 License
- Docs released under Creative Commons
