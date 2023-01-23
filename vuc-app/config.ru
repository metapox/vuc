require 'rubygems'
require 'sinatra/base'
class HelloApp < Sinatra::Base
  get '/' do
    'Hello'
  end

  get '/hello' do
    'Good Sunday Morning!'
    self
  end
end
run HelloApp
