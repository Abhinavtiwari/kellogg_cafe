KelloggCafe::Application.routes.draw do
  
  root 'home#index'
#Routes for about page
#READ
get '/about', controller:'about', action:'about'


#Routes for user
  #CREATE LANDING PAGE
  

  #READ
  get '/home', controller: 'home', action: 'index'
  get '/home/menu', controller: 'home', action: 'menu', as:'home_menu'
  #UPDATE


  # Routes for the Order resource:
  # CREATE
  get '/orders/new', controller: 'orders', action: 'new', as: 'new_order'
  post '/orders', controller: 'orders', action: 'create', as: 'orders'

  # READ
  get '/orders', controller: 'orders', action: 'index'
  get '/orders/:id', controller: 'orders', action: 'show', as: 'order'

  # UPDATE
  get '/orders/:id/edit', controller: 'orders', action: 'edit', as: 'edit_order'
  patch '/orders/:id', controller: 'orders', action: 'update'

  # DELETE
  delete '/orders/:id', controller: 'orders', action: 'destroy'
  #------------------------------



  
  #DELETE

  # Routes for the Menu resource:
  # CREATE
  get '/menus/new', controller: 'menus', action: 'new', as: 'new_menu'
  post '/menus', controller: 'menus', action: 'create', as: 'menus'

  # READ
  get '/menus', controller: 'menus', action: 'index'
  get '/menus/:id', controller: 'menus', action: 'show', as: 'menu'

  # UPDATE
  get '/menus/:id/edit', controller: 'menus', action: 'edit', as: 'edit_menu'
  patch '/menus/:id', controller: 'menus', action: 'update'

  # DELETE
  delete '/menus/:id', controller: 'menus', action: 'destroy'
  #------------------------------

  # Routes for the Ordersummary resource:
  # CREATE
  get '/ordersummaries/new', controller: 'ordersummaries', action: 'new', as: 'new_ordersummary'
  post '/ordersummaries', controller: 'ordersummaries', action: 'create', as: 'ordersummaries'

  # READ
  get '/ordersummaries', controller: 'ordersummaries', action: 'index'
  get '/ordersummaries/:id', controller: 'ordersummaries', action: 'show', as: 'ordersummary'

  # UPDATE
  get '/ordersummaries/:id/edit', controller: 'ordersummaries', action: 'edit', as: 'edit_ordersummary'
  patch '/ordersummaries/:id', controller: 'ordersummaries', action: 'update'

  # DELETE
  delete '/ordersummaries/:id', controller: 'ordersummaries', action: 'destroy'
  #------------------------------

  # Routes for the User resource:

  
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
