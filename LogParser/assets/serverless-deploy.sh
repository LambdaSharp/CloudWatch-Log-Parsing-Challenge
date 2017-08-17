#!/usr/bin/env bash

# TO EXECUTE:
# ./serverless-deploy -v --stage ENVIRONMENT_NAME --region us-west-2

dotnet restore ../LogParser.csproj
dotnet build ../LogParser.csproj
(cd ../ ; dotnet lambda package ../LogParser.csproj --configuration release --framework netcoreapp1.0 --output-package bin/release/netcoreapp1.0/deploy-package.zip --verbose)
serverless deploy -v $@