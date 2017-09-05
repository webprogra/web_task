<h2>posts</h2>
<% @admin.posts.each do |post| %>
  <p>
    <strong>title:</strong>
    <%= post.title %>
  </p>
 
  <p>
    <strong>post:</strong>
    <%= post.context %>
    <br/><%=post.created_at%>
  </p>
<% end %>
