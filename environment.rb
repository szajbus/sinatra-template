ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler'

Bundler.setup   :default, ENV['RACK_ENV']
Bundler.require :default, ENV['RACK_ENV']

if $0 == 'application.rb'
  set :run, true
else
  set :run, false

  log = File.new(File.join('log', "#{Sinatra::Base.environment}.log"), "a+")
  $stdout.reopen(log)
  $stderr.reopen(log)
end
