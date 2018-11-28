Rails.application.routes.draw do
  resources :cronogramas
  resources :painels
  resources :chamados
  resources :financeiros
  #get 'dashboard/index'
  devise_for :gestors
  devise_for :admins
  
  root to: 'dashboard#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
