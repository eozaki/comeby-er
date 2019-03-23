Rails.application.routes.draw do
  devise_for :agents
  devise_for :buyers, path: 'users'
  devise_for :admins
  
  resources :admins do
    collection do
      resources :houses
    end
  end

  resources :houses, only: [:index, :show]
end
