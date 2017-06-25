Rails.application.routes.draw do
  root "in_needs#index"
  resources :in_needs, only: [:new, :create, :index]
  resources :donation_logs, only: [:create, :index]
end
