
class RoutePrep

    def route(request)
        if request.fetch(:path) == '/people'
            Response.new(200, PeopleController.new.index.to_s)
        elsif request.fetch(:path) == '/person'
            #read from people controller method index
        else
            send_file_not_found
        end
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

