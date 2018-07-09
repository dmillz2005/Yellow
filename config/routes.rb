Rails.application.routes.draw do
  get 'yellow/index'
  post 'yellow/create'
  resources :column do
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

