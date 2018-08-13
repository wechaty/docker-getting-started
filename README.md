# DOCKER-WECHATY-GETTING-STARTED

[![Powered by Wechaty](https://img.shields.io/badge/Powered%20By-Wechaty-blue.svg)](https://github.com/chatie/wechaty)
[![Docker Pulls](https://img.shields.io/docker/pulls/zixia/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/zixia/wechaty/)
[![Docker Stars](https://img.shields.io/docker/stars/zixia/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/zixia/wechaty/)
[![Docker Layers](https://images.microbadger.com/badges/image/zixia/wechaty.svg)](https://microbadger.com/#/images/zixia/wechaty)

[![dockeri.co](http://dockeri.co/image/zixia/wechaty)](https://hub.docker.com/r/zixia/wechaty/)

Getting Started Template for Docker Users

## FEATURES

1. Wechaty is fully dockerized. So it will be very easy to be used as a MicroService. 
1. Clone this repository, then you will be able to use Docker to run Wechaty with ZERO configuration.

## REQUIREMENTS

1. Docker Installed
1. Good Global Internet Connection

## USAGE

### 1. Run Vanilla Javascript Example

```shell
bash -x bin/docker-run-javascript-vanilla.sh
```

### 2. Run ES6 Javascript Example

```shell
bash -x bin/docker-run-javascript-es6.sh
```

### 3. Run TypeScript Example

```shell
bash -x bin/docker-run-typescript.sh
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

### Use Docker Registry China Mirror

Thanks Docker, there's a official registry mirror in China, and you can use it by adding `registry.docker-cn.com/` in front of the image name:

```diff
- docker pull zixia/wechaty
+ docker pull registry.docker-cn.com/zixia/wechaty
```

See Also:

- https://www.docker-cn.com/registry-mirror
- https://docs.docker.com/registry/recipes/mirror/#use-case-the-china-registry-mirror

## AUTHOR

[Huan LI](http://linkedin.com/in/zixia) \<zixia@zixia.net\>

<a href="https://stackexchange.com/users/265499">
  <img src="https://stackexchange.com/users/flair/265499.png" width="208" height="58" alt="profile for zixia on Stack Exchange, a network of free, community-driven Q&amp;A sites" title="profile for zixia on Stack Exchange, a network of free, community-driven Q&amp;A sites">
</a>

## COPYRIGHT & LICENSE

- Code & Docs © 2018 Huan LI \<zixia@zixia.net\>
- Code released under the Apache-2.0 License
- Docs released under Creative Commons
