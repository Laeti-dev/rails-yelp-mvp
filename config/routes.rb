Rails.application.routes.draw do
  resources :restaurants, except: [ :destroy]
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end
