Rails.application.routes.draw do
  resources :events
  resources :bands
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
