class RespPrep
SERVER_ROOT = "/ts_challenge_2/"

def make_response
    if request.fetch(:path) == '/people'
        #read from people controller method index
    elsif request.fetch(:path) == '/person'
        #read from people controller method index
    else
        #respond with errors
    end
end