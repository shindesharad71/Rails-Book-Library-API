class Api::V1::UsersController < ApplicationController
    
    # Register user
    def create
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}, status: 201
        else
            render json: {error: "Invalid username or password"}
        end
    end

    def login
        render json: {message: 'login works!'}, status: 200
    end

    def auto_login
        render json: {message: 'auto_login works!'}, status: 200
    end

    private
    def user_params
        params.permit(:username, :password, :age)
    end
end
