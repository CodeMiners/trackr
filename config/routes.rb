Rails.application.routes.draw do
  devise_for :users

  resources :users do
  	resources :tasks
  	get 'today' => 'tasks#today'
  end

  root 'welcome#index'

end
