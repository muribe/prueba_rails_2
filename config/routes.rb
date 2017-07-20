Rails.application.routes.draw do
  get 'items/index'
  post 'items/delete'
  root 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
