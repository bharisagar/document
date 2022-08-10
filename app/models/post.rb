class Post < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5, maximum: 50}
    validates :body, presence: true, length: {minimum: 10, maximum: 100}
    belongs_to :user #Added to include a user can have many posts
    has_many :comments, dependent: :destroy
end
