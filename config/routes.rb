Rails.application.routes.draw do
  resources :blocks
  resources :versions
  resources :pages
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
