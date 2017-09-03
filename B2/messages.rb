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
    user = User.create(username:username,password:password)
    if user==nil
      return false
    end
    return true
  end
  def add(user_id,message)
    Message.create(content:message,user_id:user_id,created_at:Time.new)
  end
  def search(author)
    if author==nil||author.length==0
      return false
    else
      user_id=User.find_by(username:author)
      if user_id==nil
        return false
      else
        messages=Message.where(user_id:user_id)
        if messages==nil
          return false
        else 
          return messages
        end
      end
    end
  end
end
