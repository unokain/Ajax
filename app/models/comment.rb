class Comment < ApplicationRecord
  belongs_to :blog_in
  validates :content, presence: true
end
