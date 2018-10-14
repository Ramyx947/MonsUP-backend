Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
        resources :users, only: [:show, :create, :index]
        resources :trips, only: [:show, :create, :index, :update]
        resources :physical_ratings, only: [:show, :create, :index, :update]
        resources :days, only: [:show, :create, :index, :update]
        resources :accommodations, only: [:show, :create, :index, :update]

        get "/users/:id/trips", to: "users#show_trips"
        get "/trips/:id/days", to: "trips#show_days"
        # get "/users/:id/trips/:id/days", to "users#show_trip_days"

        post '/signin', to: 'users#signin'
        get '/validate', to: 'users#validate'

        post '/login', to: 'users#login'

      
        post '/trips/:id/days', to: 'days#create'
        
    end
  end
  # patch "/trips/:id", to "trips#update"
  # patch "/days/:id", to "days#update"
  # patch "/physical_ratings/:id", to "physical_ratings#update"
  # patch "/accommodations/:id", to "accommodations#update"

end
