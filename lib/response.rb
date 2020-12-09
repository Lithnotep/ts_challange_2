
class RoutePrep

    def route(request)
        if request.fetch(:path) == '/people'
            Response.new(200, PeopleController.new.index.to_s)
        elsif request.fetch(:path).include?('/person')
            Response.new(200, PeopleController.new.show(params(request)).to_s)
        else
            "Data not found"
        end
    end

    def params(request)
        request.fetch(:params)
    end

    
end

class Response
    
    def initialize(code, data)
        @response = 
        "HTTP/1.1 #{code}\r\n" +
        "Content-type: application/json\r\n" +
        "\r\n" +
        data
    end

    def send(client)
        client.write(@response)
    end
end

