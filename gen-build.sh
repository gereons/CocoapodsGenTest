#!/bin/bash

rm -rf gen
pod gen TestLib.podspec --platforms=ios

cd gen/TestLib

xcodebuild CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CODE_SIGN_ENTITLEMENTS="" CODE_SIGN_IDENTITY="" -scheme TestLib -workspace TestLib.xcworkspace -configuration Debug build | xcpretty
