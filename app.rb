require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::base
    configure :development do 
        register Sinatra::Reloader 
    end 
end 