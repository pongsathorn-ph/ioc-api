@echo off

if not exist "assets" mkdir "assets"

helm package -d "temp" .

helm repo index --url "assets" --merge "index.yaml" "temp"

move /Y "temp\ioc-api-chart-*.tgz" "assets"

move /Y "temp\index.yaml" .

rmdir "temp"
