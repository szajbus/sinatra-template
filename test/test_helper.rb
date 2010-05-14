ENV['RACK_ENV'] = 'test'

require 'application'

set :run, false

require 'test/unit'
require 'rack/test'

class Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end