Rails.application.routes.draw do
  resources :profiles

  resources :groups

  resources :rsvps

  resources :events

  resources :welcome

  resources :conversations do
    resources :messages
  end

  resources :users

  get 'index' => 'welcome#index'
  get 'about' => 'welcome#about'
  get 'faq' => 'welcome#faq'
  get 'blog' => 'welcome#blog'
  get 'contact' => 'welcome#contact'
  get 'privacy' => 'welcome#privacy'
  get 'tos' => 'welcome#tos'
  get 'login' => 'welcome#login'
  get 'dashboard-settings' => 'welcome#dashboard-settings'
  get 'dashboard-settings-step-1' => 'welcome#dashboard-settings-step-1'
  get 'events' => 'welcome#events'
  get 'my-groups' => 'welcome#my-groups'
  get 'my-events' => 'welcome#my-events'
  get 'created-events' => 'welcome#created-events'

  root to: 'welcome#index'
  get 'welcome/index'

  devise_for :users
end
