require 'pg'
require "csv"

con = PG.connect :dbname => 'touchsource'


CSV.foreach('db/data/mock_data_csv.csv', headers: true) do |row|
    first = row["first"].gsub("'", "''")
    last = row["last"].gsub("'", "''")
    con.exec "INSERT INTO People (first, last) VALUES ('#{first}', '#{last}')"
end

total = con.exec "SELECT * FROM People;"
p "#{total.ntuples} People added"