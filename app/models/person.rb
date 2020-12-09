class Person

    def all
        con = PG.connect :dbname => 'touchsource'
        con.exec('SELECT * FROM People')
    ensure
        con.close if con
    end

    
end