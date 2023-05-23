Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'tasks#index'

  # # Read all
  # get '/tasks', to: 'tasks#index'

  # # Create a new task
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create'

  # # Read one
  # get '/tasks/:id', to: 'tasks#show', as: 'task'

  # # Update a task
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch '/tasks/:id', to: 'tasks#update'

  # # delete a task
  # delete '/tasks/:id', to: 'tasks#destroy'
  resources :tasks
end
