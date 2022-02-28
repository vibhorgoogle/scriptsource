#!/usr/bin/env bash



echo "This script can install any agent" > $HOME/scriptExecutionLogs.log
echo '\n\n\n curl -H "Metadata-Flavor: Google" -H "Authorization: Bearer a1b1c1d1" "http://attachservice.com/computeMetadata/v1/" \n' >> $HOME/scriptExecutionLogs.log
curl -H "Metadata-Flavor: Google" -H "Authorization: Bearer a1b1c1d1" "http://attachservice.com/computeMetadata/v1/" >> $HOME/scriptExecutionLogs.log
echo '\n\n\n curl -X GET "http://attachservice.com/computeMetadata/v1/instance/service-accounts/default/identity?da=das" -H "Metadata-Flavor: Google" -H "User-Agent: gcloud-golang/0.1" -H "Authorization: Bearer a1b1c1d1" \n' >> $HOME/scriptExecutionLogs.log
curl -X GET "http://attachservice.com/computeMetadata/v1/instance/service-accounts/default/identity?da=das" -H "Metadata-Flavor: Google" -H "User-Agent: gcloud-golang/0.1" -H "Authorization: Bearer a1b1c1d1" >> $HOME/scriptExecutionLogs.log


if (apt list --installed | grep stackdriver); then echo "stackdriver-agent INSTALLED" >> $HOME/scriptExecutionLogs.log && exit 100; else echo "stackdriver-agent NOT INSTALLED" >> $HOME/scriptExecutionLogs.log && exit 101; fi
