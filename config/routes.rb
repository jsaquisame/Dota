Rails.application.routes.draw do
  get 'stat/index'
  get 'stat/show'
  resources :hero, only: [:index,:show]
  root to:'hero#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
