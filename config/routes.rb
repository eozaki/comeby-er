Rails.application.routes.draw do
  devise_for :agents
  devise_for :buyers, path: 'users'
  devise_for :admins
end
