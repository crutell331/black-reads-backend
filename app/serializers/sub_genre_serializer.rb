class SubGenreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img, :authors, :books_with_authors
end
