class Api::V1::UsersController < ApplicationController
    def create
        render json: {message: 'create works!'}, status: 200
    end

    def login
        render json: {message: 'login works!'}, status: 200
    end

    def auto_login
        render json: {message: 'auto_login works!'}, status: 200
    end
