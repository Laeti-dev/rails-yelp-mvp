Rails.application.routes.draw do
  resources :restaurants, except: [ :new, :create, :destroy]
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end
