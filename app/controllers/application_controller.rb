class ApplicationController < ActionController::API

    before_action :authorized

    JWT_SECRET = '8I@={Lfygi#!eFY'

    def encode_token(payload)
        JWT.encode(payload, JWT_SECRET) # Add your JWT Secret key here
    end

    def auth_header
        request.headers['Authorization']
    end

    def decode_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, JWT_SECRET, true, algorithm: 'HS256')
            rescue JWT::DEcodeError
                nil
            end
        end
    end

end
