Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :systems
  resources :engagements
  root :to => redirect('/systems')
end
