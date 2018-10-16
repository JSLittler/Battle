require 'sinatra/base'

class MyApp < Sinatra::Base
  get "/" do
    "Testing infrastructure working!"
  end
end