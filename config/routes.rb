Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :systems
  resources :engagements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
