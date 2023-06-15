Rails.application.routes.draw do
  get 'pictures/index'
  get 'pictures/new'
  get 'pictures/create'
  get 'pictures/confirm'
  get 'pictures/show'
  get 'pictures/edit'
  get 'pictures/update'
  get 'pictures/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
