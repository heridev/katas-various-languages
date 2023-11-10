
## CSV practice
require 'csv'

CSV.open('name_of_file.csv', 'w', headers: true) do |row|
  row << ["first column 'test'", 'second column']

  row << [
    'first value',
    'second value'
  ]
end

## logical operators

# this will assign second to the value
value = 'something' && 'second'

# this will assign 
value = true AND value = 'second'


