# twitter.sh

cli for twitter api using consumer key/secret based application-only auth

## usage

clone script

```
git clone https://github.com/temptemp3/sh2.git -b 190504
git clone https://github.com/temptemp3/twitter.sh.git
```

source into shell or script

```
. twitter.sh/twitter.sh
. sh2/aliases/commands.sh
```

before calling `twitter` command

```
local consumer_key
local consumer_secret
local bearer_token
local access_token
consumer_key="YOURCK"
consumer_secret="YOURCS"
bearer_token="$( echo -n "${consumer_key}:${consumer_secret}" | base64 -w 0 )"
```

before using api

```
access_token=$( twitter oauth2 token )
```

show user info

```
twitter users show ${user}
```
