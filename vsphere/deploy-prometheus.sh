bosh -d prometheus deploy prometheus-boshrelease/manifests/prometheus.yml \
  -o prometheus-boshrelease/manifests/operators/monitor-bosh.yml \
  -o opsfiles/replace-vmtype.yml \
  -v bosh_url=https://10.9.9.102:25555 \
  -v bosh_username=${BOSH_USERNAME} \
  -v bosh_password=${BOSH_PASSWORD} \
  --var-file bosh_ca_cert=ca.crt \
  -v metrics_environment=cf
