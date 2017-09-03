require './messages.rb'
require './Message.rb'
require './User.rb'
require 'sinatra'
require 'active_record'
require 'mysql2'
enable:sessions
get '/' do
  erb:login
end
post '/' do
  if session[:user_id]==nil
    erb:exit
  end
  @messages=Message.all
  @username=session[:username]
  erb:show
end
post '/login' do
  message=Messages.new
  id=message.login(params[:username],params[:password])
  if id==false
    erb:login_error
  else
    session[:username]=params[:username]
    session[:user_id]=id
    @messages=Message.all
    @username=session[:username]
    erb:show
  end
end
get '/signup' do
  erb:signup
end
post '/signup' do
  message=Messages.new
  if(params[:username].length==0||params[:password].length==0)
    erb:signup_error
  else
    user=message.signup(params[:username],params[:password])
    if user==false
      erb:signup_error
    else
      erb:login
    end
  end
end
post '/add' do
  if session[:user_id]==nil
    erb:exit
  end
  @username=session[:username]
  message=Messages.new
  if(params[:message].length<10)
    @messages=Message.all
    erb:add_error
  else
    message.add(session[:user_id],params[:message])
    @messages=Message.all
    erb:show
  end
end
get '/search' do
  if session[:user_id]==nil
    erb:exit
  else
    message=Messages.new
    messages=message.search(params[:author])
    @messages=messages
    erb:result
  end
end
