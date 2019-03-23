Rails.application.routes.draw do
  devise_for :agents
  devise_for :buyers, path: 'users'
  devise_for :admins
  
  resources :agents, only: [] do
    collection do
      resources :houses, as: :agents_houses
    end
  end

  resources :houses, only: [:index, :show]
end
