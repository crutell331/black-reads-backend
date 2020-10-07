class Api::V1::UserController < ApplicationController

    def create 
        user = User.create(user_params)
        render json: UserSerializer.new(user).serialized_json
    end

    def show 
        token = request.headers["Authorization"].split(' ')[1]
        id = JWT.decode(token, "SECRET")[0]["user_id"]
        user = User.find(id)
        render json: UserSerializer.new(user).serialized_json
    end

    def add_library_book
        username = params[:username]
        book_id = params[:book_id]
        user = User.find_by(username: username)
        book = Book.find(book_id)
        library_book = LibraryBook.create(user:user, book:book)
        render json: LibraryBookSerializer.new(library_book).serialized_json
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
