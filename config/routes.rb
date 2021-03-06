Rails.application.routes.draw do

  # get 'picture/new'
  #
  # get 'picture/create'
  #
  # get 'picture/edit'
  #
  # get 'picture/update'
  #
  # Shopping ccart application routes
  namespace :shopping do
    resources :products, only: [:index]
    resource :cart, only: [:show]
    resources :order_items, only: [:create, :update, :destroy]
  end

  # match "/products" => "shopping/products#index", :as=>"products", via: [:get, :post]


  #Devise releted USer routes
  devise_for :users

  #Map application Routes
  match 'index', to: 'locations#index', via: [:post, :get]
  resources :locations do
    resources :picture, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :users do
    resources :locations
    resources :picture, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :employes do
    #match 'create_new_employe', to: 'employes#create_new_employe', via: [:post]
  end

  root 'locations#index'

 # match 'geolocation', to: 'users#geolocation', via: [:post, :get]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
