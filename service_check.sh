#! /bin/bash

services=('ssh' 'ngix' 'mysql')

for service in "${services[@]}"
do
systemctl  is-active service
if [ $? -ne 0 ]
then
echo "${service} service restarting ...."
systemctl restart "$service"
fi
done

exit 0
