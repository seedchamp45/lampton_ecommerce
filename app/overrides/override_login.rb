


Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment",
                     :name => "override_email",
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


Deface::Override.new(:virtual_path => "spree/order_mailer/confirm_email",
                     :name => "confirm_email",
                     :replace => '*',
                     :text => '  
                     <p class="lede">
        <%= t(".dear_customer") %>
      </p>
      <p>
        <%= t(".instructions") %>
      </p>
      <p>
        <%= t(".order_summary") %>
      </p>
                     <% @order.line_items.each do |item| %>
                     
          <%= item.variant.sku %>
       
              <%= item.variant.product.name %>
              <%= item.variant.options_text -%>
        
          (<%=item.quantity%>) @ <%= item.single_money %> = <%= item.display_amount %>
      <br>
        <% end %>
        <%= t(".subtotal") %>
         <%= @order.display_item_total %>
                     ')







