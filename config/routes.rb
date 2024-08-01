Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'home#index'
  devise_for :users, controllers: {registrations: 'users/registrations',sessions: 'users/sessions' }
  
end
