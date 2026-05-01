# coding: utf-8
# frozen_string_literal: true

begin
  require File.expand_path(File.join(File.dirname(__FILE__), "lib/pyroscope/version"))
rescue LoadError
  puts "WARNING: Could not load Pyroscope::VERSION"
end

Gem::Specification.new do |s|
  s.name = 'pyroscope'
  s.version = Pyroscope::VERSION
  s.summary = 'Pyroscope'
  s.description = 'Pyroscope FFI Integration for Ruby'
  s.authors = ['Pyroscope Team']
  s.email = ['contact@pyroscope.io']
  s.homepage = 'https://grafana.com/oss/pyroscope/'
  s.license = 'Apache-2.0'
  s.metadata = {
    "homepage_uri" => "https://grafana.com/oss/pyroscope/",
    "bug_tracker_uri" => "https://github.com/grafana/pyroscope-ruby/issues",
    "documentation_uri" => "https://grafana.com/docs/pyroscope/latest/configure-client/language-sdks/ruby/",
    "source_code_uri" => "https://github.com/grafana/pyroscope-ruby",
  }

  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "ext/rbspy/Cargo.lock",
    "ext/rbspy/Cargo.toml",
    "ext/rbspy/Rakefile",
    "ext/rbspy/cbindgen.toml",
    "ext/rbspy/extconf.rb",
    "ext/rbspy/include/rbspy.h",
    "ext/rbspy/src/backend.rs",
    "ext/rbspy/src/lib.rs",
    "lib/pyroscope.rb",
    "lib/pyroscope/version.rb",
    "pyroscope.gemspec",
  ]
  s.platform = Gem::Platform::RUBY

  s.required_ruby_version = ">= 1.9.3"

  s.extensions = ['ext/rbspy/extconf.rb']

  s.add_dependency 'ffi'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake', '~> 13.0'
end
