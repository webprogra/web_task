class Message
  @@messages=Array.new
  @@i=0	
  @@id=000
  def getMessage
    return @@messages
  end
  def addMessage(id,author,message)
    created_at=Time.now
    if id==""
    @@id+=1
    @@messages[@@i]=[@@id,message,author,created_at].join("#")
    else
    @@messages[@@i]=[id,message,author,created_at].join("#")
    end
    @@i+=1
    return @@messages
  end
  def deleteMessage(id)
    message=Array.new
    @@messages.length.times do|t|
      message=(@@messages[t]).split("#")
      if(message[0]==id)
        @@messages.delete(@@messages[t])
        @@i-=1
        return @@messages
      end
    end
    return @@messages
  end
  def editMessage(id)
    @@messages.length.times do|t|
      message=@@messages[t].split("#")
      if(message[0]==id)
         return @@messages[t]
      end
    end
  end
  def checkMessageId(id)
    m=Array.new
    k=0
    @@messages.length.times do|t|
      message=@@messages[t].split("#")
      if(message[0]==id)
        m[k]=@@messages[t]
        k+=1
      end
    end
    return m
  end
  def checkMessageAuthor(author)
    m=Array.new
    k=0
    @@messages.length.times do|t|
      message=@@messages[t].split('#')
      if(message[2]==author)
        m[k]=@@messages[t]
        k+=1
      end 
    end
    return m  
  end
end
