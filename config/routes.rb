Rails.application.routes.draw do
  
  root 'home#home'
  
  match 'home', to: 'home#home', via: [:get]
  match 'account', to: 'account#account', via: [:get]
  match 'contact', to: 'contact#contact', via: [:get]
  match 'clients', to: 'clients#clients', via: [:get]
  match 'reviews', to: 'reviews#reviews', via: [:get]
  match 'partners', to: 'partners#partners', via: [:get]
  match 'portfolio', to: 'portfolio#portfolio', via: [:get]
  match 'inquiry', to: 'inquiry#inquiry', via: [:get]
  match 'shop', to: 'shop#shop', via: [:get]
  
  match 'signup', to: 'sessions#signup', via: [:post]
  match 'authenticate', to: 'sessions#authenticate', via: [:post]
  match 'forgot_password', to: 'sessions#forgot_password', via: [:post]
  
  resources :users
  
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
