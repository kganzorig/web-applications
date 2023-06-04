require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
    configure :development do 
        register Sinatra::Reloader 
    end 

    post '/sort-names' do 
       names = params[:names].split(",")
       new_names = names.sort.join(",")

       return new_names
    end 

    get '/hello' do 
        @name = params[:name]
        
        
        return erb(:index)
    end 
end 