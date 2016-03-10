Rails.application.routes.draw do
  devise_for :users

  resources :users do
  	resources :tasks
  	get 'today' => 'tasks#today'
  	get 'week' => 'tasks#week'
  end

  root 'welcome#index'

end
