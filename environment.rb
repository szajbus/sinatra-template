ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler'

Bundler.setup   :default, ENV['RACK_ENV']
Bundler.require :default, ENV['RACK_ENV']
