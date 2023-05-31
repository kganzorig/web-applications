# POST /names Route Design Recipe

_Copy this design recipe template to test-drive a Sinatra route._

## 1. Design the Route Signature

You'll need to include:
  * the HTTP method
  * the path
  * any query parameters (passed in the URL)
  * or body parameters (passed in the request body)

Return list of names in alphabetical order
Path: /names
Query parameters: name(string)
body parameters: Joe,Alice,Zoe,Julia,Kieran
 
     
## 2. Design the Response

The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return `200 OK` if the post exists, but `404 Not Found` if the post is not found in the database.

Your response might return plain text, JSON, or HTML code. 

_Replace the below with your own design. Think of all the different possible responses your route will return._

return list of names: Alice,Joe,Julia,Kieran,Zoe
```


## 3. Write Examples

_Replace these with your own design._

```
# Request:

POST /names

When body param 'name' is 'Joe,Alice,Zoe,Julia,Kieran'
# Expected response:
Alice,Joe,Julia,Kieran,Zoe
```


## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
    include Rack::Test::Methods

    let(:app) {Application.new}

    context "post /names " do 
        it "should return 'Joe,Alice,Zoe,Julia,Kieran'" do
            response = get('/names')

             expect(response.status).to eq(200)
             expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
        end 
    end 
end 
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->
