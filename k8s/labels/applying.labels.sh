#!/bin/bash
# author: Thiago Lopes
# this script create four deployments in kubernetes

# first deploy

kubectl run alpaca-prod --image=gcr.io/kuar-demo/kuard-amd64:blue --labels="ver=1,app=alpaca,env=prod"

# second deploy

kubectl run alpaca-test --image=gcr.io/kuar-demo/kuard-amd64:green --labels="ver=2,app=alpaca,env=test"

# third deploy

kubectl run bandicoot-prod --image=gcr.io/kuar-demo/kuard-amd64:green --labels="ver=2,app=bandicoot,env=prod"

# fourthy deployment

kubectl run bandicoot-staging --image=gcr.io/kuar-demo/kuard-amd64:green --labels="ver=2,app=bandicoot,env=staging"