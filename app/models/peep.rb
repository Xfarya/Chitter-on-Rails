class Peep < ApplicationRecord
  has_many :comments
  validates :body, presence: true, length: { minimum: 1 } 
end
