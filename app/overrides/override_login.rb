Deface::Override.new(virtual_path: 'spree/user_registrations/new',
                     name: 'remove_new_customer_if_sessionomniauth',
                     replace: 'div#new-customer h6',
                     text: '',
                     disabled: false)

Deface::Override.new(virtual_path: 'spree/user_sessions/new',
                     name: 'add_socials_to_login_extras',
                     insert_before: '[data-hook="login_extras"]',
                     text: '
                     <br>
                     <br>
                     <p>OR</p>
                     <a href="/users/auth/facebook" class="btn btn-lg btn-success" style="background-color: #3B5998;">Log in with facebook</a>
                     <br>
                     <br>
                     <p>OR</p>',
                     disabled: false)


Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment",
                     :name => "override_shipment",
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
                      <p><% @order.line_items.each do |item| %> </p>
                     
           <p><%= item.variant.sku %> </p>
       
              <p> <%= item.variant.product.name %>  </p>
               <p><%= item.variant.options_text -%>  </p>
        
           <p>(<%=item.quantity%>) @ <%= item.single_money %> = <%= item.display_amount %> </p>
      <br>
        <% end %>
        <%= t(".subtotal") %>
         <%= @order.display_item_total %>
                     ')







