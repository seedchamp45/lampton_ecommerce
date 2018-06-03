Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment",
                     :name => "override_login",
                     :insert_top => ".shipment-number",
                     :text => "
   
                     <div style='disply:none;'<%= test = order.number %> 
                     <%= photo = Photo.where(:title => test).first %></div>
                     <br>
                 
                     <% if photo %>
                     	SLIP IMAGE
                     	      <br>
                     	<%= link_to image_tag(photo.image.url, class: 'media-object'), photo.image.url, target: '_blank' %>
              
                     	 
                     <% else %>
                    	CUSTOMER DIDN'T UPLOAD SLIP YET
                     <% end %>
                     <br>



                     ",
                     :disabled => false)


Deface::Override.new(
  virtual_path:  'spree/admin/shared/_menu',
  name:          'add_content_menu_links',
  insert_bottom: "[data-hook='admin_tabs']"
) do
  <<-HTML
      <li class="tab-with-icon">
      <%= link_to "/contents/new", target: :_blank do %>
         <span class="text">Content</span>
      <% end %>
      </li>
  HTML
end

