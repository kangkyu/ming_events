Rails.application.routes.draw do
  root 'events#index'
  resources :tasks

  get '/events', to: 'events#index'
  get '/event/:id', to: 'events#show', as: 'event'

  # verb "url" => "name_of_controller#name_of_action"
end
