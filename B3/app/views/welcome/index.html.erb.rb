<h1>Welcome</h1>  
<% if user_signed_in? %>  
    hello!  
  <%=link_to('my blog',controller:'posts')%>|
  <%= link_to('登出', destroy_user_session_path, :method => :delete) %>  
<% else %>  
  <%= link_to('注册', new_registration_path(:user)) %> | 
  <%= link_to('登录', new_session_path(:user)) %>
  <%= link_to('游客',controller:'guests')%>
<% end %> 
