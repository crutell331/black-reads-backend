class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :year_published, :img, :author
end
