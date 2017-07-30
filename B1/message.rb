class Message
  @@messages=Array.new
  @@i=0	
  @@id=000
  def getMessage
    return @@messages
  end
  def addMessage(author,message)
    created_at=Time.now
    @@id+=1
    @@messages[@@i]=[@@id,message,author,created_at].join("#")
    @@i+=1
    return @@messages
  end
  def deleteMessage(id)
    j=0
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
