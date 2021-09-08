class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, '8I@={Lfygi#!eFY') # Add your JWT Secret key here
    end

end
