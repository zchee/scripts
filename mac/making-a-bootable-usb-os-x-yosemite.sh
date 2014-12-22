#!/bin/sh

sudo hdiutil attach /Applications/Install\ OS\ X\ Yosemite.app/Contents/SharedSupport/InstallESD.dmg
sudo asr restore -source /Volumes/OS\ X\ Install\ ESD/BaseSystem.dmg -target /Volumes/Untitled -erase -format HFS+
sudo rm /Volumes/OS\ X\ Base\ System/System/Installation/Packages
sudo cp -a /Volumes/OS\ X\ Install\ ESD/Packages /Volumes/OS\ X\ Base\ System/System/Installation/Packages
sudo cp -a /Volumes/OS\ X\ Install\ ESD/BaseSystem.dmg /Volumes/OS\ X\ Install\ ESD/BaseSystem.chunklist /Volumes/OS\ X\ Base\ System
