require 'environment'

configure do
  set :views, File.join(File.dirname(__FILE__), 'views')
end

get '/' do
  haml :root
end
