#!/bin/bash
bosh -d vault deploy vault-boshrelease/manifests/vault.yml \
     -o opsfiles/replace-vault.yml

