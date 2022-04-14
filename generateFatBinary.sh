!#/bin/sh

rm -rf build/* && \
rm -rf Products/*.xcframework && \

xcodebuild archive \
-project SecretSquirrelFramework/SecretSquirrelFramework.xcodeproj \
-scheme SecretSquirrelFramework \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/SecretSquirrelFramework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES && \

xcodebuild archive \
-project SecretSquirrelFramework/SecretSquirrelFramework.xcodeproj \
-scheme SecretSquirrelFramework \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/SecretSquirrelFramework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES && \

xcodebuild -create-xcframework \
-archive  './build/SecretSquirrelFramework-iphonesimulator.xcarchive' \
-framework 'SecretSquirrelFramework.framework' \
-archive './build/SecretSquirrelFramework-iphoneos.xcarchive' \
-framework 'SecretSquirrelFramework.framework' \
-output 'Products/SecretSquirrel.xcframework'
