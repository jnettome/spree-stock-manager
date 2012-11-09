Spree::Core::Engine.routes.prepend do
  namespace :admin do
    resources :products do
    	collection do
    		get :stock
        get :stock_show
    	end
    end
  end
end