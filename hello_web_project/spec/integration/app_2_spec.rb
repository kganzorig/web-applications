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
end 