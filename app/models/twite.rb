class Twite < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :twite_picture
end
