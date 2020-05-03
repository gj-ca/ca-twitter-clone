class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :twite
  has_one_attached :comment_picture
  # i expect [file, files] or file
end
