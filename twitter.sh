#!/bin/bash
## twitter.sh
## version 0.0.1 - initial
##################################################
twitter-users-show() { { local screen_name ; screen_name="${1}" ; }
  _() {
    { # get user
      curl \
      --silent \
      --url "https://api.twitter.com/1.1/users/show.json?screen_name=${screen_name}" \
      --header "Authorization: Bearer $( cat access-token )"
    } 
  }
  {
    cache \
    "${cache}/$( sanitize ${FUNCNAME} ${screen_name} )"
    "_"
  }
}
twitter-users() {
   commands
}
twitter-oauth2-token() {
  { # get access token
    curl \
    --silent \
    --url "https://api.twitter.com/oauth2/token?grant_type=client_credentials" \
    --header 'Content-Type: application/x-www-form-urlencoded;charset=UTF-8' \
    --header "Authorization: Basic ${bearer_token}" \
    --data "grant_type=client_credentials" 
  } | tee ${FUNCNAME}-response | jq -r '.access_token'
}
twitter-oauth2() {
   commands
}
twitter() {
  commands
}
##################################################
## generated by create-stub2.sh v0.1.2
## on Thu, 09 May 2019 13:48:14 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
