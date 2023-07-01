Rails.application.routes.draw do
  post '/signups', to: 'signup#signup'
  get '/activities',  to: 'activities#index'
  delete '/activities/:id', to: 'activities#destroy'
  get '/campers', to: 'camper#index'
  get '/campers/:id', to: 'camper#show'
  post '/campers', to: 'camper#post'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
