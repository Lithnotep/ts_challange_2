class PeopleController

    def index
        people = Person.new.all
        people_data = PersonSerializer.new.people_serialize(people)
        {data: people_data}.to_json
    end

    def show(params)
        person = Person.new.find(params)
        person_data = PersonSerializer.new.person_serialize(person.first)
        {data: person_data}.to_json
    end
end