#!/usr/bin/env bash

$GITHUB_TOKEN=$1

curl -s \
    -H "Accept: application/vnd.github.v3+json" \
    --header "authorization: Bearer $GITHUB_TOKEN" \
    --url "https://api.github.com/repos/twunderlich-tc/need-test/pull/7"
