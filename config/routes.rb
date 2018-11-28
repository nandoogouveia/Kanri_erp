Rails.application.routes.draw do
  get 'cronograma/cronograma'
  get 'painel/painel'
  get 'calendario/calendario'
  get 'chamado/chamado'
  get 'financeiro/financeiro'
  get 'index/index'
  #get 'dashboard/index'
  devise_for :gestors
  devise_for :admins

  
  root to: 'dashboard#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
