class AuthorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img, :bio
end
