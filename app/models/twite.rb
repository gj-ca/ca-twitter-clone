class Twite < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many_attached :twite_pictures
end
