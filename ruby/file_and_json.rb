require 'json'
require 'awesome_print'
require 'pry'

file = File.open('generated.json', 'r')
content = file.read
parsed_json = JSON.parse(content)

File.open('result.json', 'w') do |f|
  f.write(parsed_json.first.to_json)
end
