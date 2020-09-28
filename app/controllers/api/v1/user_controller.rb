class Api::V1::UserController < ApplicationController

    def create 

    end

    def show 
        token = request.headers["Authorization"].split(' ')[1]
        id = JWT.decode(token, "SECRET")[0]["user_id"]
        user = User.find(id)
        render json: UserSerializer.new(user).serialized_json
    end

    private

    def user_params
        
    end
end
