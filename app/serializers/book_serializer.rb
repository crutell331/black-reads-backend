class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :summary, :year_published, :img, :author
end
