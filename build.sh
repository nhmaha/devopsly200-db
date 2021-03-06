buildNumber=${BUILD_NUMBER}

docker rmi -f localhost:5000/devopsly200-db-teststage
docker build -t localhost:5000/devopsly200-db-teststage -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-db-teststage-failed
docker build -t localhost:5000/devopsly200-db-teststage-failed -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-db-stagingstage
docker build -t localhost:5000/devopsly200-db-stagingstage -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-db-stagingstage-failed
docker build -t localhost:5000/devopsly200-db-stagingstage-failed -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-db-productionstage
docker build -t localhost:5000/devopsly200-db-productionstage -f DockerfileProduction .

docker rmi -f localhost:5000/devopsly200-db-productionstage-failed
docker build -t localhost:5000/devopsly200-db-productionstage-failed -f DockerfileProduction .
