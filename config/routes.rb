Rails.application.routes.draw do
  get 'donations/view_donation'
  resource :donations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
