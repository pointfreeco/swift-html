bootstrap: carthage xcodeproj

carthage:
	carthage update --no-build --use-submodules

xcodeproj:
	swift run xcodegen

test-linux:
	docker build --tag html . \
		&& docker run --rm html

test-macos: xcodeproj
	set -o pipefail && \
	xcodebuild test \
		-scheme Html_macOS \
		-destination platform="macOS" \
		| xcpretty

test-ios: xcodeproj
	set -o pipefail && \
	xcodebuild test \
		-scheme Html_iOS \
		-destination platform="iOS Simulator,name=iPhone 8,OS=11.4" \
		| xcpretty

linux-main:
	swift test --generate-linuxmain

test-swift:
	swift test --generate-linuxmain \
	  && swift test

test-all: test-linux test-mac test-ios
