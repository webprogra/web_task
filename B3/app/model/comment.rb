class Comment < ApplicationRecord
  belongs_to :post
  validates :nickname, presence: true,
                    length: { minimum: 5 }
  validates :content,presence:true,
                    length:{minimum:10}
end
