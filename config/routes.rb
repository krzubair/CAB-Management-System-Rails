Rails.application.routes.draw do
  get 'bill_details/new'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  post 'journeys/:journey_id/bill_details/new', to: 'bill_details#new', as: 'new_journey_bill_detail'


  resources :journeys do
    # ...
    resources :bill_details, only: [:new, :create, :show]
    resources :fdbks, only: [:new, :create, :show]
    
    member do
      post 'complete'
    end
  end

resources :drivers
get 'login', to: 'drivers_sessions#new'
post 'login', to: 'drivers_sessions#create'

delete 'logout', to: 'drivers_sessions#destroy', as: 'logout'
  
resources  :users 

get 'signin', to: 'sessions#new'
post 'signin', to: 'sessions#create'

get '/signout', to: 'sessions#destroy'



#  delete 'signout', to: 'sessions#destroy'

  # post "/journeys/new" => "journeys#create", :as => :create_journey
  
end
