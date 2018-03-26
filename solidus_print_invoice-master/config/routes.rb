Spree::Core::Engine.routes.append do
    resources :orders do
      member do
        get :show
      end
    end
end
