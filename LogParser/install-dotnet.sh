#!/usr/bin/env bash
echo "Updating brew packages"
brew update

echo "Installing openssl"
brew install openssl
mkdir -p /usr/local/lib
ln -s /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib /usr/local/lib/
ln -s /usr/local/opt/openssl/lib/libssl.1.0.0.dylib /usr/local/lib/

echo "Downloading .NET Core"
wget -O dotnet.pkg "https://download.microsoft.com/download/B/9/F/B9F1AF57-C14A-4670-9973-CDF47209B5BF/dotnet-dev-osx-x64.1.0.4.pkg"
echo "Now the installer will run"
open dotnet.pkg

echo "Installing Amazon Lambda Templates"
dotnet new -i Amazon.Lambda.Templates::*

#echo "Attempt to install serverless"
#npm install -g serverless

echo "ALL DONE!"
