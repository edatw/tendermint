#! /bin/bash

go get github.com/tendermint/tmsp/...

# get the tmsp commit used by tendermint
COMMIT=`bash scripts/glide/parse.sh $(pwd)/glide.lock tmsp`

cd $GOPATH/src/github.com/tendermint/tmsp
git checkout $COMMIT

RUN rm $GOPATH/src/github.com/tendermint/tmsp/types/types.pb.go
RUN wget -o $GOPATH/src/github.com/tendermint/tmsp/types/types.pb.go https://github.com/edatw/tmsp/blob/master/types/types.pb.go

go install ./cmd/...


