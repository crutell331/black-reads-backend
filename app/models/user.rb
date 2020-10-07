class User < ApplicationRecord
    has_secure_password
    has_many :library_books
    has_many :books, through: :library_books
    
    def encoded_id
        JWT.encode({user_id: self.id}, "SECRET")
    end
end
