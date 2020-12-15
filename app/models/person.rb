class Person

    def all
        connect('SELECT * FROM People ORDER BY last ASC, first ASC;')
    end

    def find(params)
        first = params[:first]
        last = params[:last]
        connect("SELECT * FROM People WHERE first = '#{first.capitalize}' AND last = '#{last.capitalize}';")
    end

    def connect(query)
        con = PG.connect :dbname => 'touchsource'
        con.exec(query)
    ensure
        con.close if con
    end
    
end