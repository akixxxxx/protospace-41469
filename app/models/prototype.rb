class Prototype < ApplicationRecord
  has_many :user
  belongs_to :comments
  has_one_attached :image
end
