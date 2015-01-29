Rails.application.routes.draw do
  get '/events', to: 'events#index'
  root 'events#index'

  # verb "url" => "name_of_controller#name_of_action"
end
