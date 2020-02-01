Rails.application.routes.draw do
  get 'messages/index'
  get 'messages/show'
  get 'messages/new'
  get 'messages/create'
  get 'messages/edit'
  get 'messages/update'
  get 'messages/destroy'

  resources :messages

  root 'messages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
