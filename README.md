# Pyroscope Ruby Gem

Ruby integration for [Pyroscope](https://grafana.com/oss/pyroscope/) continuous profiling platform.

## Installation

```
gem install pyroscope
```

## Usage

```ruby
require 'pyroscope'

Pyroscope.configure do |config|
  config.application_name = "my.ruby.app"
  config.server_address = "http://localhost:4040"
end
```

## License

Apache-2.0
