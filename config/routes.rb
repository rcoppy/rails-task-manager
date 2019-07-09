Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: 'tasks'

  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks/new', to: 'tasks#submit_new', as: 'submit_new_task'
  
  get 'tasks/edit/:id', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/edit/:id', to: 'tasks#submit_edit', as: 'submit_edited_task'

  get 'tasks/remove/:id', to: 'tasks#remove', as: 'remove_task' 
  
  get 'tasks/:id', to: 'tasks#show', as: 'task'
end
