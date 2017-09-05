<h1>Sign in</h1>
<%= form_for :admin,url: admins_path do |f| %>
  <p>
    <%= f.label :username %><br>
    <%= f.text_field :username %>
  </p>
 
  <p>
    <%= f.label :password %><br>
    <%= f.text_field :password %>
  </p>
 
  <p>
    <%= f.submit %>
  </p>
<% end %>
<%=link_to 'sign up','login.html.erb'%>
