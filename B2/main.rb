require './messages.rb'
require './Message.rb'
require './User.rb'
require 'sinatra'
require 'active_record'
require 'mysql2'
get '/' do
  erb:login
end
post '/login' do
  message=Messages.new
  id=message.login(params[:username],params[:password])
  if id==nil 
    erb:login
  else
    session[:user_id]=id
    @messages=Message.all
    erb:show
  end
end
get '/signup' do
  erb:signup
end
post '/signup' do
  message=Messages.new
  if(params[:username]==nil||params[:password]==nil)
    erb:signup
  else
    user=message.signup(params[:username],params[:password])
    if user==nil
      erb:signup
    else
      erb:login
    end
  end
end
