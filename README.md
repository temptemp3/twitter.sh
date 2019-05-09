# twitter.sh
cli for twitter api

## usage

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
