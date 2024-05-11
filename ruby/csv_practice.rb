require 'csv'

CSV.foreach('vulnerabilities.csv', headers: true) do |row|
  puts row.inspect
  puts row.to_hash
end
