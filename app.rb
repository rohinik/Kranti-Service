require 'sinatra'
require 'json'


get '/success' do
  content_type :json
  status 200
  body success_response().to_json
end


private

def status_for state
  state ?  200 : 400 
end


def success_response
  {:status => "SUCCESS"}
end


