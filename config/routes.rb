Rails.application.routes.draw do
  



  get '/catalogue' => 'catalogue#catalogue'

  get '/support' => 'support#support'

  get '/termandcondition' => 'termandcondition#termandcondition'

  get '/myaccount' => 'myaccount#myaccount'

  get '/faq' => 'faq#faq'

  get '/agent' => 'agent#agent'

   get '/wishlist' => 'wishlist#wishlist'

  get '/smarthome' => 'smarthome#smarthome'

  get '/vission_mission' => 'vissionmission#vissionmission'



  get '/certificate' => 'certificate#certificate'
  
   post '/companyptofile/:order', to: 'companyptofile#new'

  


get '/photos', to: 'photos#index'
resources :photos

get '/myaccs', to: 'myaccs#index'
resources :myaccs


post "payments/create"
  resources :payments 

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
