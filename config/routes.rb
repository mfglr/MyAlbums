Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  post "load_data", to: "data#load"

  resources :users do
    member do
      post "update_photo"
      delete "destroy_photo"
    end
    collection do
      post "search"
    end
  end

  root "users#index"
end
