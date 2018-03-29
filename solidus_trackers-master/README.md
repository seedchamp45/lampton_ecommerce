Solidus Trackers
==============

[![Build Status](https://travis-ci.org/solidusio-contrib/solidus_trackers.svg?branch=master)](https://travis-ci.org/solidusio-contrib/solidus_trackers)

A simple tracker implementation for Solidus.
- Allows creation of trackers from the admin configuration panel

Installation
------------

Add solidus_trackers to your Gemfile:

```ruby
gem 'solidus_trackers'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_trackers:install
```

Usage
-------

Tracking requirements vary greatly between projects; it is difficult to provide an analytics extension that suits the specific needs of everyone.
This extension provides a baseline implementation, however, you are encouraged to find a more robust tracking solution for your project.

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs, and [Rubocop](https://github.com/bbatsov/rubocop) static code analysis. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your application's integration with this extension you may use its factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_trackers/factories'
```