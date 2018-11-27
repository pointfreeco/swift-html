xcodeproj:
	@command -v xcodegen >/dev/null 2>&1 || { echo >&2 "Required tool missing: XcodeGen. Try 'brew install xcodegen' perhaps?"; exit 1; }
	xcodegen

test-linux:
	docker build --tag html . \
		&& docker run --rm html

test-macos: xcodeproj
	set -o pipefail && \
	xcodebuild test \
		-scheme Html-Package \
		-destination platform="macOS" \
		| xcpretty

test-ios: xcodeproj
	set -o pipefail && \
	xcodebuild test \
		-scheme Html-Package \
		-destination platform="iOS Simulator,name=iPhone 8,OS=11.4" \
		| xcpretty

linux-main:
	swift test --generate-linuxmain

test-swift:
	swift test --generate-linuxmain \
	  && swift test

test-all: test-linux test-mac test-ios
