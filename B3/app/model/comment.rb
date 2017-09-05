class Comment < ApplicationRecord
  belongs_to :post
  has_many:comments
  validates :title,presences:true,
                   length: { minimum: 5 }
  validates :context,presence: true
end
