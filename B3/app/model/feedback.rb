class Feedback < ApplicationRecord
  belongs_to :admin
  validates:nickname,presence:true,
                     length:{mininum:5}
  validates:content,presence:true
end
