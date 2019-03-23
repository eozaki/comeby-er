Rails.application.routes.draw do
  devise_for :buyers, path: '/'
  devise_for :admins
end
