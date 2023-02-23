test-linux:
	docker run \
		--rm \
		-v "$(PWD):$(PWD)" \
		-w "$(PWD)" \
		swift:5.7-focal \
		bash -c 'swift test'

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
		-destination platform="iOS Simulator,name=iPhone 11 Pro Max,OS=13.2.2" \
		| xcpretty

test-swift:
	swift test \
		--enable-test-discovery \
		--parallel

format:
	swift format \
		--ignore-unparsable-files \
		--in-place \
		--recursive \
		./Html.playground ./Package.swift ./Sources ./Tests

test-all: test-linux test-macos test-ios test-swift
