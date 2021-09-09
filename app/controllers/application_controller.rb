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

    def logged_in_user
        if decode_token
            user_id = decode_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!logged_in_user
    end

    def authorized
        render json: {message: 'Please login'}, status: :unauthorized unless logged_in?
    end

end
