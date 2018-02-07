[![Build Status](https://travis-ci.org/vietdien2005/shinken-compose.svg?branch=master)](https://travis-ci.org/vietdien2005/shinken-compose) [![](https://images.microbadger.com/badges/image/vietdien2005/shinken-webui2-base.svg)](https://microbadger.com/images/vietdien2005/shinken-webui2-base) [![](https://images.microbadger.com/badges/version/vietdien2005/shinken-webui2-base.svg)](https://microbadger.com/images/vietdien2005/shinken-webui2-base) [![Donate with Bitcoin](https://en.cryptobadges.io/badge/micro/1KKeoHcvfErak1bQq92uDuCXmcpEtT2ufE)](https://en.cryptobadges.io/donate/1KKeoHcvfErak1bQq92uDuCXmcpEtT2ufE) [![Donate with Litecoin](https://en.cryptobadges.io/badge/micro/LKqoLFQnxjY672rKjCk1NhXiCoDLcQDtnz)](https://en.cryptobadges.io/donate/LKqoLFQnxjY672rKjCk1NhXiCoDLcQDtnz) [![Donate with Ethereum](https://en.cryptobadges.io/badge/micro/0x93c1D92d120861C9Bc6b1A3aa90809e4da2c0D68)](https://en.cryptobadges.io/donate/0x93c1D92d120861C9Bc6b1A3aa90809e4da2c0D68)

![Demo Image](https://raw.githubusercontent.com/vietdien2005/shinken-compose/master/image.png)

# Docker Shinken WebUI2
Simple base docker image for Shinken monitoring system with webui2, mongodb and notify with Telegram

## Running

Command:

    docker-composer up -d

And go to http://localhost:7767 and login with:

- Username: admin
- Password: admin

## Config 

- All config file in folder config, you just edit it & restart with command:
```
    docker-composer restart
```

## Plugins Shinken

- webui2
- ssh
- linux-ssh
- auth-htpasswd
- http
- mod-mongodb
- snapshot-mongodb
- retention-mongodb
- lives

## Donate

[![Donate with Bitcoin](https://en.cryptobadges.io/badge/big/1KKeoHcvfErak1bQq92uDuCXmcpEtT2ufE)](https://en.cryptobadges.io/donate/1KKeoHcvfErak1bQq92uDuCXmcpEtT2ufE)

[![Donate with Ethereum](https://en.cryptobadges.io/badge/big/0x93c1D92d120861C9Bc6b1A3aa90809e4da2c0D68)](https://en.cryptobadges.io/donate/0x93c1D92d120861C9Bc6b1A3aa90809e4da2c0D68)

[![Donate with Litecoin](https://en.cryptobadges.io/badge/big/LKqoLFQnxjY672rKjCk1NhXiCoDLcQDtnz?showBalance=true)](https://en.cryptobadges.io/donate/LKqoLFQnxjY672rKjCk1NhXiCoDLcQDtnz)
