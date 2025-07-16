Rails.application.routes.draw do
  get "/", to: "games#index"
  get "/games", to: "games#view"
  get "/characters", to: "characters#view"
  get "/places", to: "places#view"
  get "/monsters", to: "monsters#view"
  get "/bosses", to: "bosses#view"

  resources :games
  resources :characters
  resources :places
  resources :monsters
  resources :bosses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
