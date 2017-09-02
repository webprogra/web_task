require './User.rb'
require 'active_record'
require 'mysql2'
class Messages
  def login(username,password)
    user=User.find_by(username:username,password:password)
    if user==nil
      return false
    else 
      return user.id
    end
  end
  def signup(username,password)
    id=1
    if User.first==nil
      user = User.create(id:id,username:username,password:password)
    else
      id=User.last.id+1
      user=User.create(id:id,username:username,password:password)
      if user==nil
        return false
      end
    end
    return true
  end
end
