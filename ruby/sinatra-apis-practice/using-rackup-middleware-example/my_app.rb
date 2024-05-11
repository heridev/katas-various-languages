require 'sinatra'

class LoginScreen < Sinatra::Base
  enable :sessions

  get('/login') do
    '<h1><a href="/create-session">Create new session</a></h1>'
  end

  get('/create-session') do
    session['authentication'] = 'superadmin'
    redirect '/session-created'
  end

  get('/session-created') do
    'session created'
  end
end

class MyApp < Sinatra::Base
  use LoginScreen

  before do
    unless session['authentication']
      redirect '/login'
    end
  end

  get('/') { "hello <h1>something</h1>"}

  get('/authenticated-route') do
    erb"<h1> You are authenticated </h1>"
  end
end
