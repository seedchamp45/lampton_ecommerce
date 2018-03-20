Devise.secret_key = "ddf52a02f8e96544d2b597d7ef336ae8a79a7d344b6d90148c717f9e059ec9b3e1d063c74429c9152308b89a7cab2b4a8d1a"
Devise.setup do |config|
  # Required so users don't lose their carts when they need to confirm.
  config.allow_unconfirmed_access_for = 1.days

  # Fixes the bug where Confirmation errors result in a broken page.
  config.router_name = :spree

  # Add any other devise configurations here, as they will override the defaults provided by solidus_auth_devise.
end