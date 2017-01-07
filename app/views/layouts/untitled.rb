<!DOCTYPE html>
          <html>
          <head>
          <title>GuestBook</title>
  <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</ head>
<body>
<%
    if flash[:notice] %>
    <div
      class="alert alert-success">
      <%= flash[:notice] %>
    </div>
<% end %>
<div class= "container">
      <div class="page-header">
      <h1>Ksiega gosci</h1>
  </ div>
      <%= yield %>
</div>


</body>
</html>
