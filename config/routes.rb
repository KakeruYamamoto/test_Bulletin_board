Rails.application.routes.draw do
  resources :post
  root to:'posts#index'
end
