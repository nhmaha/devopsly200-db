marathon=$(curl http://myip.dnsomatic.com)
echo ${marathon}

echo Deleting test
curl -X DELETE -H "Content-Type: application/json" http://${marathon}:8080/v2/apps/db-test?force=true 
sleep 5 
echo posting app
curl -X POST -H "Content-Type: application/json" http://${marathon}:8080/v2/apps -d@app_marathon_test.json
echo Deployed to test