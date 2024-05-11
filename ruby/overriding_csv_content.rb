
## CSV practice
require 'csv'

CSV.open('name_of_file.csv', 'w', headers: true) do |row|
  row << ['name', 'age', 'city']

  row << [
    'Heriberto',
    '37',
    'colima'
  ]

  row << [
    'andrea',
    '37',
    'colima'
  ]

  row << [
    'Guillermo',
    '38',
    'Aguascalientes'
  ]
end

