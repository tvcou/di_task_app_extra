Rails.application.routes.draw do
  resources :blocks do
    resources :tasks, only: [:create, :destroy]
  end
  
  post '/blocks/:block_id/tasks/:id/toggle' => 'tasks#toggle'

  root 'blocks#index'
end
