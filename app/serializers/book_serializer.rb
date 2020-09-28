class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :year_published, :cover_img, :author
end
