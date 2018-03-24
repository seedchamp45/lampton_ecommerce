Rails.application.routes.draw do
  

  get '/agent' => 'agent#agent'

   get '/wishlist' => 'wishlist#wishlist'

  get '/smarthome' => 'smarthome#smarthome'

  get '/vission_mission' => 'vissionmission#vissionmission'

  get '/companyptofile' => 'company_profile#companyptofile'

  get '/certificate' => 'certificate#certificate'
  

  


get '/photos', to: 'photos#index'
resources :photos

  get 'about/certificate'

  get 'about/awards'

  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
