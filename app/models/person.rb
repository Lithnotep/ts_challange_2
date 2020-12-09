class Person

    def all
        connect('SELECT * FROM People ORDER BY last ASC, first ASC;')
    end

    def find
        connect()
    end

    def connect(query)
        con = PG.connect :dbname => 'touchsource'
        con.exec(query)
    ensure
        con.close if con
    end

    
end