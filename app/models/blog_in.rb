class BlogIn < ApplicationRecord
    has_many :comments, dependent: :destroy
end
