Rails.application.routes.draw do
  resources :groups, except: [:destroy]
  resources :concerts

  root 'concerts#index'
  
  delete 'groups/destroy', to: 'groups#destroy', as: 'destroy_group'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
