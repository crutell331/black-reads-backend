class AuthorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img, :bio, :books
end
