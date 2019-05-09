# twitter.sh

cli for twitter api using consumer key/secret based application-only auth

## usage

clone twitter.sh

```
https://github.com/temptemp3/twitter.sh.git
```

source into script

```
. ./twitter.sh/twitter.sh
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
