class App
  def call(_env)
    puts _env
    [200, { 'Content-Type' => 'text/html' }, ['<h1>hello world!</h1>']]
  end
end

run App.new
