class Api::V1::AuthController < ApplicationController
    def create
        user = User.find_by(username: login_params[:username])
        if user && user.authenticate(login_params[:password]) 
        render json: UserSerializer.new(user).serialized_json
        end
    end


    private
    def login_params
        params.require(:user).permit(:username, :password)
    end
end
