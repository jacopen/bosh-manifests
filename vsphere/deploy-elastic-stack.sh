bosh -d elastic-stack deploy elastic-stack-bosh-deployment/elastic-stack.yml \
     -l elastic-stack-bosh-deployment/versions.yml \
     -o elastic-stack-bosh-deployment/ops-files/vm_types.yml \
     -o elastic-stack-bosh-deployment/ops-files/disk_types.yml \
     -o elastic-stack-bosh-deployment/ops-files/instances.yml \
     -o elastic-stack-bosh-deployment/ops-files/networks.yml \
     -o elastic-stack-bosh-deployment/ops-files/azs.yml \
     -o elastic-stack-bosh-deployment/ops-files/elasticsearch-add-data-nodes.yml \
     -o elastic-stack-bosh-deployment/ops-files/elasticsearch-add-plugins-master.yml \
     -o elastic-stack-bosh-deployment/ops-files/elasticsearch-add-plugins-data.yml \
     -o elastic-stack-bosh-deployment/ops-files/logstash-readiness-probe.yml \
     -o elastic-stack-bosh-deployment/ops-files/kibana-https-and-basic-auth.yml \
     --var-file logstash.conf=logstash.conf \
     -v elasticsearch_master_instances=1 \
     -v elasticsearch_master_vm_type=small.disk \
     -v elasticsearch_master_disk_type=5120 \
     -v elasticsearch_master_network=service \
     -v elasticsearch_master_azs="[main]" \
     -v elasticsearch_data_instances=1 \
     -v elasticsearch_data_vm_type=small.disk\
     -v elasticsearch_data_disk_type=5120 \
     -v elasticsearch_data_network=service \
     -v elasticsearch_data_azs="[main]" \
     -v logstash_instances=1 \
     -v logstash_vm_type=small \
     -v logstash_disk_type=5120 \
     -v logstash_network=service \
     -v logstash_azs="[main]" \
     -v logstash_readiness_probe_http_port=0 \
     -v logstash_readiness_probe_tcp_port=5514 \
     -v kibana_instances=1 \
     -v kibana_vm_type=small \
     -v kibana_network=service \
     -v kibana_azs="[main]" \
     -v kibana_username=${KIBANA_USERNAME} \
     -v kibana_password=${KIBANA_PASSWORD} \
     --no-redact
#     -o ops-files/logstash-add-lb.yml \
#     -o ops-files/elasticsearch-add-lb.yml \
#     -o ops-files/kibana-add-lb.yml \
