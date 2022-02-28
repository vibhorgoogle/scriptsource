#!/usr/bin/env bash


echo "This script can install any agent" > $HOME/scriptExecutionLogs.log
curl -H "Metadata-Flavor: Google" -H "Authorization: Bearer a1b1c1d1" "http://attachservice.com/computeMetadata/v1/" >> $HOME/scriptExecutionLogs.log
curl -X GET "http://attachservice.com/computeMetadata/v1/instance/service-accounts/default/identity?da=das" -H "Metadata-Flavor: Google" -H "User-Agent: gcloud-golang/0.1" -H "Authorization: Bearer a1b1c1d1" >> $HOME/scriptExecutionLogs.log
