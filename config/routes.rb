Rails.application.routes.draw do
  root "in_needs#index"
  resources :in_needs, only: [:new, :create, :index]

  get "/donations" => "donations#index"
end
