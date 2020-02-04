Rails.application.routes.draw do
  get 'todo/list'
  get 'todo/list/:group_id', to: 'todo#list_by_group_id'
  get 'todo/new'
  post 'todo/create'
  get 'todo/delete_all'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
