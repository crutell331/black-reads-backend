class Api::V1::SubGenreController < ApplicationController
  def index
    subGenres = SubGenre.all
    render json: SubGenreSerializer.new(subGenres).serialized_json
  end
end
