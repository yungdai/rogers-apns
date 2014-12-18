Rails.application.routes.draw do




  # get 'apns/show'
  #
  # get 'apns/edit'
  #
  # get 'apns/index'
  #
  # get 'apns/new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  resources :apns, only: [:new, :create, :show, :index, :edit, :update]
  # resources :contacts, only: [:new, :create, :show, :index, :edit, :update]
  resources :apns do
    # ensures that you send the apn ID into the contact path so that contact saves to the correct APN ID
    resources :contacts
    resources :nodes do
      resources :tunnels do
        resources :tunnel_rules
        end
    end
  end


  resources :users, only: [:new, :create, :show, :edit]
  resources :sessions, only: [:create, :destroy, :new]
  # resources :tunnels
  # resources :tunnels_rules
  resources :users do
    member do
      get :activate
    end
  end

  root 'apns#index'

  # create new routes called login/logout that does a <sessions#new/sessions#destroy> - Yung Dai
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  get "signup" => "users#new", :as => "signup"



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
