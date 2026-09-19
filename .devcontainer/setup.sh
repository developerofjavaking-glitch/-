#!/bin/bash
set -e
SDK=/usr/local/android-sdk
sudo mkdir -p $SDK/cmdline-tools
cd /tmp
wget -q https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O cmdtools.zip
sudo unzip -q cmdtools.zip -d $SDK/cmdline-tools
sudo mv $SDK/cmdline-tools/cmdline-tools $SDK/cmdline-tools/latest
sudo chown -R $(whoami) $SDK
yes | $SDK/cmdline-tools/latest/bin/sdkmanager --licenses
$SDK/cmdline-tools/latest/bin/sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"
