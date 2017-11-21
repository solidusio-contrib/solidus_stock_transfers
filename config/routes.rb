Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :stock_transfers, except: [:destroy] do
      member do
        get :receive
        put :finalize
        put :close
        get :tracking_info
        put :ship
      end
    end
  end

  namespace :api, defaults: { format: 'json' } do
    resources :stock_transfers, only: [] do
      member do
        post :receive
      end
      resources :transfer_items, only: [:create, :update, :destroy]
    end
  end
end
