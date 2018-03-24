Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment",
                     :name => "override_login",
                     :insert_top => ".shipment-number",
                     :text => "<a href="">check transfer</a>-",
                     :disabled => false)
