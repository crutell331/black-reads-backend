class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :encoded_id
end
