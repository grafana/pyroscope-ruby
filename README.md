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

### Puma cluster mode with preloaded applications

When Puma uses `preload_app!`, initialize Pyroscope in each worker after it forks. Configuring it while the master loads the application starts the profiler before the fork, so the worker does not get its own profiler thread.

Add the configuration to `config/puma.rb`:

```ruby
preload_app!

on_worker_boot do
  require "pyroscope"

  Pyroscope.configure do |config|
    config.application_name = "my.ruby.app"
    config.server_address = "http://localhost:4040"
  end

  # The Rails engine's after_initialize hook runs in the preloaded master,
  # before Pyroscope is configured in the workers.
  Pyroscope.initialize_rails_hooks
end
```

For non-Rails applications, omit the `Pyroscope.initialize_rails_hooks` call. Do not also call `Pyroscope.configure` from a Rails initializer when using this worker hook; the profiler should be initialized once in each worker, after the fork.

## License

Apache-2.0
