require 'sinatra'
before do
  content_type :json
end

get '/' do
  status 200
  [{algo: 'something'}].to_json
end

get '/users' do
  status 200
  [{algo: 'something'}].to_json
end
