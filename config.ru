require 'environment'

set :run, false

log = File.new(File.join('log', "#{Sinatra::Base.environment}.log"), "a+")
$stdout.reopen(log)
$stderr.reopen(log)

require 'application'

run Sinatra::Application
