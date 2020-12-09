
class Parser

    def parse(request)
        method, path, version = request.lines[0].split
        path_params = params(path)
        {
            path: path,
            params: path_params,
            method: method,
            headers: parse_header(request)
        }
    end

    def parse_header(request)
        headers = {}

        request.lines[1..-1].each do |line|
            return headers if line == "\r\n"
            header, value = line.split
            header = normalize(header)
            headers[header] = value
            end

    end

    def params(path)
        param = path.split("/")
        {
            last: param[2],
            first: param[3]
        }
    end

    def normalize(header)
        header.gsub(":", "").downcase.to_sym
    end

end