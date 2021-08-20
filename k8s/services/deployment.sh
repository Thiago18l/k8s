#!/bin/bash
# Author: Thiago Lopes

# this script deploy 2 apps and expose them

kubectl apply -f alpaca-prod-deploy.yaml && kubectl apply -f alpaca-prod-svc.yaml

kubectl apply -f bandicoot-prod-deploy.yaml && kubectl apply -f bandicoot-prod-svc.yaml