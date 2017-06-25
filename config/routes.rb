Rails.application.routes.draw do
  resources :necessidades
  resources :cadastro_beneficiario
  resources :lista_prioridade
  root to: "cadastro_beneficiario#index"
  resources :produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
