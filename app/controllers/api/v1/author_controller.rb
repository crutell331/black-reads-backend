class Api::V1::AuthorController < ApplicationController
  def index
    authors = Author.all 
    render json: AuthorSerializer.new(authors).serialized_json
  end
end
