require 'pg'

begin

    con = PG.connect :dbname => 'touchsource'
    
    con.exec "DROP TABLE IF EXISTS People"
    con.exec "CREATE TABLE People(Id INTEGER PRIMARY KEY, First VARCHAR(20), Last VARCHAR(20))"
ensure
    con.close if con
    
end