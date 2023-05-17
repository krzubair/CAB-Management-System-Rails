Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :journeys
  resources  :users

 get 'signin', to: 'sessions#new'
 post 'signin', to: 'sessions#create'
 delete 'signout', to: 'sessions#destroy'

  # post "/journeys/new" => "journeys#create", :as => :create_journey
  
end
