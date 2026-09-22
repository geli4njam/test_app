Rails.application.routes.draw do
  root 'books#index'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    omniauth_callbacks: 'admins/omniauth_callbacks'
  }

  resources :books
end
