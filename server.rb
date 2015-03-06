require 'sinatra/base'
require 'honeybadger'

class MyApp < Sinatra::Application
  error do |err|
    'Sorry, something went wrong.'
  end

  get '/' do
    'You may be looking to /fail'
  end

  get '/fail' do
    fail 'Testing an exception from the Sinatra router.'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
