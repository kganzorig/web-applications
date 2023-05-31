require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
    include Rack::Test::Methods

    let(:app) {Application.new}

    context "Get /hello " do 
        it "should return 'Hello Khuslen'" do
            response = get('/hello?name=Khuslen')

             expect(response.status).to eq(200)
             expect(response.body).to eq("Hello Khuslen")
        end 

        it "should return 'Hello James'" do 
            response = get('/hello?name=James')

            expect(response.status).to eq(200)
            expect(response.body).to eq("Hello James")
        end 
    end 
end 