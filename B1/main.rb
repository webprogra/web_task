require './message.rb'
require 'sinatra'
get '/' do
  message=Message.new
  @messages=message.getMessage()
  erb:show
end
post '/add' do
  if params[:author]==nil||params[:message].length<10
    redirect to('add_error')
  end
  message=Message.new
  @messages=message.addMessage(params[:id],params[:author],params[:message])
  erb:show
end
post '/delete' do
  message=Message.new
  @messages=message.deleteMessage(params[:id])
  erb:show
end
post '/edit' do
  message=Message.new
  @message=message.editMessage(params[:id])
  message.deleteMessage(params[:id])
  erb:edit
end
get '/check_id' do
  message=Message.new
  @message=message.checkMessageId(params[:id])
  if @message==nil||@message.length==0
    redirect to('/check_error')
  else
    erb:check
  end
end
get '/check_author' do
  message=Message.new
  @message=message.checkMessageAuthor(params[:author])
  if @message==nil||@message.length==0
    redirect to('/check_error')
  else
    erb:check
  end
end
get '/add_error' do
  erb:add_error
end
get '/check_error' do
  erb:check_error
end
