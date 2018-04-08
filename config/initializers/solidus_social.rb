Spree::SocialConfig.configure do |config|
  config.use_static_preferences!

  # Configure the Path prefix for OAuth paths
  # The default is /user/auth/:provider
  #
  # for /member/auth/:provider
   #config.path_prefix = 'member'
  # for /profile/auth/:provider
   #config.path_prefix = 'profile'
  # for /auth/:provider
  # config.path_prefix = 'facebook'

  config.providers = {
    facebook: {
      api_key: ENV['1620076268100083'],
      api_secret: ENV['2a75ffd10172df3109a189cff0e05824'],
    }
  }
end

SolidusSocial.init_providers

OmniAuth.config.logger = Logger.new(STDOUT)
OmniAuth.logger.progname = 'omniauth'

OmniAuth.config.on_failure = proc do |env|
  env['devise.mapping'] = Devise.mappings[Spree.user_class.table_name.singularize.to_sym]
  controller_name  = ActiveSupport::Inflector.camelize(env['devise.mapping'].controllers[:omniauth_callbacks])
  controller_klass = ActiveSupport::Inflector.constantize("#{controller_name}Controller")
  controller_klass.action(:failure).call(env)
end
