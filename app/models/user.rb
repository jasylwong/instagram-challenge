class User < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true, length: { within: 6..10 }

  has_many :posts
  has_many :likes
end
