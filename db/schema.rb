require 'pg'

begin

    con = PG.connect :dbname => 'touchsource'
    
    con.exec "DROP TABLE IF EXISTS People"
    con.exec "CREATE TABLE People(
        id SERIAL PRIMARY KEY,
        first VARCHAR NOT NULL,
        last VARCHAR NOT NULL
        )"
ensure
    con.close if con
    
end