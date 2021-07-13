Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :doctors, only: %i[:index, :show]
      resources :users, only: %i[:create] do 
        resources :appointments
      end
    end
  end
  post 'login', to: 'authentication#login'
  get 'auto_login', to: 'authentication#auto_login'
  get 'user_is_authed', to: 'authentication#user_is_authed'
end
