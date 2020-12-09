class PersonSerializer

    def people_serialize(people)
        people.map do |person|
            [person['last'], person['first']]
        end     
    end
end