Rails.application.routes.draw do
  resources :necessidades
  get 'cadastro_necessidade/index'

  resources :cadastro_beneficiario
  resources :lista_prioridade
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
