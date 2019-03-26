Pod::Spec.new do |s|
  s.name = "HtmlSnapshotTesting"
  s.version = "0.3.0"
  s.summary = "SnapshotTesting strategies for Html."

  s.description = <<-DESC
  Snapshot test your HTML with ease with ready-to-use strategies.
  DESC

  s.homepage = "https://github.com/pointfreeco/swift-html"

  s.license = "MIT"

  s.authors = {
    "Stephen Celis" => "stephen@stephencelis.com",
    "Brandon Williams" => "mbw234@gmail.com"
  }
  s.social_media_url = "https://twitter.com/pointfreeco"

  s.source = {
    :git => "https://github.com/pointfreeco/swift-html.git",
    :tag => s.version
  }

  s.swift_version = "5.0"

  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.10"
  s.tvos.deployment_target = "10.0"

  s.dependency "Html", "~> 0.3"
  s.dependency "SnapshotTesting", "~> 1.3"

  s.source_files = "Sources/HtmlSnapshotTesting/**/*.swift"
end
