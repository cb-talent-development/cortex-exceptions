# Cortex::Exceptions

[![Dependency Status](https://gemnasium.com/cb-talent-development/cortex-exceptions.svg)](https://gemnasium.com/cb-talent-development/cortex-exceptions)

`cortex-exceptions` provides a set of common exceptions used across the Cortex SOA infrastructure.

## Installation

Add this line to your application's Gemfile:

    gem 'cortex-exceptions'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cortex-exceptions

## Usage

Simply reference the exception you wish to raise or rescue from in your application. Example:

```ruby
raise Cortex::Exceptions::ResourceConsumed
```
