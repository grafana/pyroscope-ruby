#!/bin/sh
# Smoke-test the x86_64-linux-musl gem inside an Alpine container.
# Takes the directory containing the built gem as an argument (default /pkg):
#   docker run --rm -v "$PWD/pkg:/pkg" -v "$PWD/scripts:/scripts" ruby:3.4-alpine /scripts/tests/smoke-musl.sh
set -ex

GEM_DIR="${1:-/pkg}"

ldd /usr/local/bin/ruby | grep -q musl

gem install "$GEM_DIR"/pyroscope-*-x86_64-linux-musl.gem

ruby -e '
  require "pyroscope"
  require "pyroscope/version"
  puts "loaded pyroscope #{Pyroscope::VERSION}"

  Pyroscope.configure do |config|
    config.application_name = "musl.smoke.test"
    config.server_address = "http://localhost:4040"
    config.autoinstrument_rails = false
  end

  # Burn CPU briefly so the profiler samples this process end to end.
  deadline = Time.now + 2
  x = 0
  x += 1 while Time.now < deadline

  Pyroscope.shutdown
  puts "profiler started and shut down cleanly"
'
