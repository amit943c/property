Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'locations#index'
  resources :locations, :projects
  get 'signup/user' => 'users#new'
  post 'signup/user' => 'users#create'
  get 'signup/broker' => 'brokers#new'
  post 'signup/broker' => 'brokers#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  
end
