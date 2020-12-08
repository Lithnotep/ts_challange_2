class Parser

    def parse(request)
        method, path, version = request.lines[0].split
        {
            path: path
            method: method
            headers: version
        }
    end
end