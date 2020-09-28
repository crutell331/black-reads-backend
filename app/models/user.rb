class User < ApplicationRecord
    has_secure_password

    def encoded_id
        JWT.encode({user_id: self.id}, "SECRET")
    end
end
