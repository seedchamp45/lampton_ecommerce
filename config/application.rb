require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LamptonEcommerce
  class Application < Rails::Application
    
    config.to_prepare do
      # Load application's model / class decorators
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      # Load application's view overrides
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
    config.assets.initialize_on_precompile = true
    config.assets.precompile += ['index.css']
    config.assets.precompile += ['index.js']
    config.assets.precompile += ['aos.css']
    config.assets.precompile += ['aos.js']
    config.assets.precompile += ['.css', '.js'] 
    config.serve_static_assets = true
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
 
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :address => "smtp.gmail.com",
      :port => 587,
      :domain => "gmail.com",
      :user_name => "lamptan.info@gmail.com",
      :password => "lamptan2018",
      :authentication => "plain",
      :enable_starttls_auto => true
    }
    config.action_mailer.perform_deliveries = true

     Omise.api_key = "skey_5beatz1mdssinganu0e"

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
