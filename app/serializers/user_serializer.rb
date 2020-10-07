class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :encoded_id, :books
end
