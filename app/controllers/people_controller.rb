class PeopleController

    def index
        people = Person.new.all
        people_data = PersonSerializer.new.people_serialize(people)
        {data: people_data}
    end
end