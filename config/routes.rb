Rails.application.routes.draw do
  get 'cronograma/cronograma'
  get 'cronograma', to: 'cronograma#cronograma'
  
  get 'painel/painel'
  get 'painel', to: 'painel#painel'
  
  get 'calendario/calendario'
  get 'calendario', to: 'calendario#calendario'
  
  get 'chamado/chamado'
  get 'chamado', to: "chamado#chamado"
  
  get 'financeiro/financeiro'
  get 'financeiro', to: 'financeiro#financeiro'
  
  get 'index/index'
  get 'inicio', to: 'index#index'

  devise_for :gestors
  devise_for :admins

  
 root to: 'index#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
