Rails.application.routes.draw do
  resources :tasks

  get '/events', to: 'events#index'
  get '/event/:id', to: 'events#show', as: 'event'
  root 'events#index'

  # verb "url" => "name_of_controller#name_of_action"
end
