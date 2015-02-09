Rails.application.routes.draw do
  resources :profiles

  resources :groups

  resources :rsvps

  resources :events

  resources :welcome

  get 'index' => 'welcome#index'
  get 'about' => 'welcome#about'
  get 'faq' => 'welcome#faq'
  get 'blog' => 'welcome#blog'
  get 'contact' => 'welcome#contact'
  get 'privacy' => 'welcome#privacy'
  get 'tos' => 'welcome#tos'
  get 'dashboard-settings' => 'welcome#dashboard-settings'
  get 'dashboard-settings-step-1' => 'welcome#dashboard-settings-step-1'
  get 'my-groups' => 'welcome#my-groups'
  get 'my-events' => 'welcome#my-events'
  get 'created-events' => 'welcome#created-events'

  root to: 'welcome#index'
  get 'welcome/index'

  devise_for :users
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
