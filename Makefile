APP_DIR=${PWD}/Sources/MyApp
BUILD_TOOLS_DIR=${PWD}/BuildTools
PROJECT_DIR=${PWD}
SWIFTRUN=swift run --package-path ${BUILD_TOOLS_DIR}

init:;  swift package resolve --package-path ${BUILD_TOOLS_DIR}; swift package resolve --package-path ${APP_DIR}
clean:;  rm -rf ${BUILD_TOOLS_DIR}/.build; rm -rf ${APP_DIR}/.build;
rswift:;  xcodebuild -workspace LUUP.xcworkspace -scheme rswift
lint:;  xcodebuild -workspace LUUP.xcworkspace -scheme lint
format:;  xcodebuild -workspace LUUP.xcworkspace -scheme format
test:
		rm -rf .build/TestResults
		rm -rf .build/TestResults.xcresult
		xcodebuild -sdk iphonesimulator -configuration Debug -workspace LUUP.xcworkspace -scheme LUUPStaging -destination 'platform=iOS Simulator,name=iPhone 13' -resultBundlePath .build/TestResults clean test

