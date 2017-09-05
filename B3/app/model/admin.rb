class Admin < ApplicationRecord
  has_many:posts
  validates :username, presence: true,
                    length: { minimum: 5 }
  validates :password,presence: true
end
