require 'rubygems'
require 'sinatra/base'
require './db'

class HelloApp < Sinatra::Base
  get '/' do
    DB.instance.increment
    sleep 1 
    DB.instance.display
  end

  get '/hello' do
    'Good Sunday Morning!'
    self
  end
end

run HelloApp
