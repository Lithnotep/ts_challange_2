class RespPrep
SERVER_ROOT = "/ts_challenge_2/"

    def confirm_response(request)
        if request.fetch(:path) == '/people'
            #read from people controller method index
        elsif request.fetch(:path) == '/person'
            #read from people controller method index
        else
            #respond with errors
        end
    end

    def send_ok_response(data)
        #responese with json data
    end
  
    def send_file_not_found
        #response with error code
    end
end

class Response

end

