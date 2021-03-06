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
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
            render json: {error: "Invalid username or password"}, status: 400
        end
    end

    def auto_login
        render json: @user
    end

    private
    def user_params
        params.permit(:username, :password, :age)
    end
end
