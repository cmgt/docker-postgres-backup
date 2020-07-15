$version = "1.0.3"
Write-Host $version

docker build -t pg_backup:$version .

docker login --username cledeploy
docker tag pg_backup:$version cledeploy/pg_backup:$version
docker tag pg_backup:$version cledeploy/pg_backup:latest
docker push cledeploy/pg_backup

pause ..