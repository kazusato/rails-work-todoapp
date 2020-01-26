Rails.application.routes.draw do
  get 'todo/list'
  get 'todo/new'
  post 'todo/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
