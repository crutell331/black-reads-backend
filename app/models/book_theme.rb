class BookTheme < ApplicationRecord
  belongs_to :book
  belongs_to :theme
end
