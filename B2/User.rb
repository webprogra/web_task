require 'active_record'
require 'mysql2'
ActiveRecord::Base.establish_connection(
:adapter => "mysql2",
:host => "127.0.0.1",
:username => "root",  # mysql用户名
:password => "123456",  # mysql密码
:database => "message")  # mysql数据库名
class User < ActiveRecord::Base
  validates :username, presence: true
end
