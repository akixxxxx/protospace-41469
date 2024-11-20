class Prototype < ApplicationRecord
  has_many :user
  belongs_to :comments
end
