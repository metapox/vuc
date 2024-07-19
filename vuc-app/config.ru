require 'rubygems'
require 'sinatra/base'
require './db'

class HelloApp < Sinatra::Base
  get '/' do
    db = DB.instance.connection
    begin
      db.run('SELECT 1')
    rescue
      return e.message
    end
    return 'Hello, world!'
  end

  get '/hello' do
    'Good Sunday Morning!'
    self
  end
end

run HelloApp
