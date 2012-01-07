Zadziory::Application.routes.draw do

  resources :requests

  resources :authentications

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :preferences

  resources :places

  resources :histories

  resources :user_panel

  devise_for :users
  
  devise_scope :user do
	get "login", :to => "devise/sessions#new" 
	get "logout", :to => "devise/sessions#destroy"
	get "register", :to => "devise/registrations#new"
  end
  
  devise_for :users, :controllers => {:registrations => 'registrations'}
  
  match '/auth/:provider/callback' => 'authentications#create'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
#	authenticate :user do
		root :to => "places#index"
	#end

	#root :to => "devise/sessions#new"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'

	get "myplaces" => "places#myPlaces", :as => "myplaces"
	get "panel" => "user_panel#index", :as => "panel"
	get "undefined" => "application#undefined_error", :as => "undefined"

  # matchings for Tenant actions
  get "allTenantRequests" => "requests#allTenantRequests", :as => "all_tenant_requests"
  get "pendingTenantRequests" => "requests#pendingTenantRequests", :as => "pending_tenant_requests"
  get "acceptedTenantRequests" => "requests#acceptedTenantRequests", :as => "accepted_tenant_requests"
  get "rentedTenantRequests" => "requests#rentedTenantRequests", :as => "rented_tenant_requests"
  get "rejectedTenantRequests" => "requests#rejectedTenantRequests", :as => "rejected_tenant_requests"

  # matchings for Owner actions
  get "allOwnerRequests" => "requests#allOwnerRequests", :as => "all_owner_requests"
  get "pendingOwnerRequests" => "requests#pendingOwnerRequests", :as => "pending_owner_requests"
  get "acceptedOwnerRequests" => "requests#acceptedOwnerRequests", :as => "accepted_owner_requests"
  get "rentedOwnerRequests" => "requests#rentedOwnerRequests", :as => "rented_owner_requests"
  get "rejectedOwnerRequests" => "requests#rejectedOwnerRequests", :as => "rejected_owner_requests"
end
