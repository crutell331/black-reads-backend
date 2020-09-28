class SubGenreCategory < ApplicationRecord
  belongs_to :sub_genre
  belongs_to :genre
end
