Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  post 'posts/create'
  get 'posts/edit'
  post 'posts/update'
  post 'posts/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
