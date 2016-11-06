Rails.application.routes.draw do
	root to: "projects#index" 
  resources :blocks
  resources :versions
  resources :projects do
    resources :pages
  end

  resources :pages do
  	resources :versions
  end
  
  post '/versions/:id/edit_child_blocks_list', to: 'versions#edit_child_blocks_list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
