require 'csv'

CSV.open('name_of_file.csv', 'a', headers: true) do |row|
  row << ['juanito', '89', 'Michoacan']
end
