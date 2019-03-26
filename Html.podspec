Pod::Spec.new do |s|
  s.name = "Html"
  s.version = "0.2.0"
  s.summary = "A Swift DSL for type-safe, extensible, and transformable HTML documents."

  s.description = <<-DESC
  The popular choice for rendering HTML in Swift these days is to use
  templating languages, but they expose your application to runtime errors and
  invalid HTML. Our library prevents these runtime issues at compile-time by
  embedding HTML directly into Swift’s powerful type system.
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

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"

  s.source_files = "Sources/Html/**/*.swift"
end
