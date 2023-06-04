require 'spec_helper'
require 'rack/test'
require_relative '../../app_2'

describe Application do
    include Rack::Test::Methods

    let(:app) {Application.new}

    context "POST /sort-names " do 
        it "returns 'Alice,Joe,Julia,Kieran,Zoe'" do
            response = post('/sort-names', names:'Joe,Alice,Zoe,Julia,Kieran')

             expect(response.status).to eq(200)
             expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
        end 
    end 

    context 'GET /hello' do
        it 'returns an html hello message with the given name' do
            response = get('/hello', name: 'Khuslen')
           

        expect(response.body).to include ('<h1>Hello Khuslen!</h1>')

        #<img src="hello.jpg" />
        expect(response.body).to include('<img src="hello.jpg" />')
        end
    end 
end 