#! /bin/bash

go get github.com/edatw/tmsp/...

# get the tmsp commit used by tendermint
COMMIT=`bash scripts/glide/parse.sh $(pwd)/glide.lock tmsp`

cd $GOPATH/src/github.com/edatw/tmsp
git checkout $COMMIT
go install ./cmd/...


