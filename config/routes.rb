Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
        resources :users, only: [:show, :create, :index]
        resources :trips, only: [:show, :create, :index, :update, :delete]
        resources :days, only: [:show, :create, :index, :update]

        get "/users/:id/trips", to: "users#show_trips"
        get "/trips/:id/days", to: "trips#show_days"
        get '/validate', to: 'users#validate'
        post '/users/signin', to: 'users#signin'
        post '/trips/:id/days', to: 'days#create'
        delete '/trips/:id', to: 'trips#delete'
        
    end
  end
end
