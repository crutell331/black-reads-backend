class Api::V1::BookController < ApplicationController
    def index 
        books = Book.all 
        render json: BookSerializer.new(books).serialized_json
    end
end
