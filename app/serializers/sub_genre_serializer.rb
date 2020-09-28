class SubGenreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img, :books
end
